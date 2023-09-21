// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../api/api.dart';
import '../../../core/dim.dart';
import '../../../model/photo_model.dart';
import 'package:wallpix/dashboard/home/view_image.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class RecentTab extends StatefulWidget {
  RecentTab({super.key});

  @override
  State<RecentTab> createState() => _RecentTabState();
}

class _RecentTabState extends State<RecentTab> {
  ScrollController _scrollController = ScrollController();
  int items_number = 3;
  List<PhotoModel> model = [];

  void callApi(items_number) async {
    final mod = await ApiClass.instance.getProducts(items_number.toString());
    setState(() {
      model.addAll(mod);
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
    return GridView.count(
      controller: _scrollController,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      shrinkWrap: true,
      childAspectRatio: 1 / 1.5,
      children: List.generate(model.length, (index) {
        return GestureDetector(
          onTap: () {
            pushNewScreen(
              context,
              screen: ViewImageScreen(
                photoId: model[index].id,
              ),
              withNavBar: false, // OPTIONAL VALUE. True by default.
              pageTransitionAnimation: PageTransitionAnimation.cupertino,
            );
          },
          child: Container(
            clipBehavior: Clip.hardEdge,
            alignment: Alignment.center,
            child: Stack(
              children: [
                Image.network(
                  width: double.infinity,
                  height: double.infinity,
                  model[index].urls!.small.toString(),
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Row(
                    children: [
                      Text(model[index].likes.toString()),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 5,
                  right: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          model[index].altDescription.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                          ),
                          softWrap: true,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      width10,
                      Row(
                        children: [
                          Text(
                            "214",
                            style: TextStyle(
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                          width5,
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                            size: 18,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.all(Radius.circular(10)),
            ),
          ),
        );
      }),
    );
  }
}