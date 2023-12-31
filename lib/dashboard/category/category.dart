// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../api/api.dart';
import '../../core/dim.dart';
import '../../model/category_model.dart';
import '../CustomappBar.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'category_details.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<CategoryModel> model = [];
  int items_number = 1;
  ScrollController _scrollController = ScrollController();

  void callApi(items_number) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final mod = await ApiClass.instance.getCategory(items_number.toString());
      setState(() {
        model.addAll(mod);
      });
    });
  }

  @override
  void initState() {
    callApi(items_number);

    _scrollController.addListener(() {
      if (_scrollController.position.maxScrollExtent ==
          _scrollController.position.pixels) {
        items_number += 1;
        callApi(items_number);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          controller: _scrollController,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // ApiClass.instance.collectionDetails(
                //     model[index].id!, items_number.toString());
                pushNewScreen(
                  context,
                  screen: CategoryDetails(
                    photoId: model[index].id,
                    model: model[index],
                  ),
                  withNavBar: false, // OPTIONAL VALUE. True by default.
                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                );
              },
              child: Container(
                height: 150,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  children: [
                    Image.network(
                      model[index].coverPhoto!.urls!.regular.toString(),
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.6),
                              blurRadius: 30.0,
                              spreadRadius: 30.0,
                              offset: Offset(
                                0,
                                120,
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(model[index].title.toString())),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return height5;
          },
          itemCount: model.length),
    );
  }
}
