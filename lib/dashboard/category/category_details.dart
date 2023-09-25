// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percentify/components/RectCircularPercentify.dart';
import 'package:percentify/components/RectLinearPercentify.dart';
import 'package:percentify/components/RoundedCircularPercentify.dart';
import 'package:wallpix/core/colors.dart';
import 'package:wallpix/core/dim.dart';
import 'package:wallpix/model/photo_model.dart';
import 'package:loading_indicator/loading_indicator.dart';
import '../../api/api.dart';
import 'package:path/path.dart';
import 'package:downloads_path_provider_28/downloads_path_provider_28.dart';
import 'package:share_plus/share_plus.dart';
import 'package:page_transition/page_transition.dart';
import '../../model/category_model.dart';
import '../../model/collection_details_response.dart';
import '../home/tabs/latest.dart';
import '../home/view_image.dart';

int items_number = 1;

class CategoryDetails extends StatefulWidget {
  CategoryDetails({
    super.key,
    required this.photoId,
    required this.model,
  });

  final photoId;
  final CategoryModel model;
  @override
  State<CategoryDetails> createState() => _ViewImageScreenState();
}

class _ViewImageScreenState extends State<CategoryDetails>
    with TickerProviderStateMixin {
  ScrollController _scrollController = ScrollController();
  List<CollectionDetailsResponse> modelData = [];

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

  void callApi(items_number) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final mod = await ApiClass.instance
          .collectionDetails(widget.photoId, items_number.toString());
      setState(() {
        modelData.addAll(mod);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Stack(
          children: [
            Image.network(
              widget.model.coverPhoto!.urls!.full.toString(),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: LoadingIndicator(
                            indicatorType: Indicator.pacman,

                            /// Required, The loading type of the widget
                            colors: const [Colors.white],

                            /// Optional, The color collections
                            strokeWidth: 2,

                            /// Optional, The stroke of the line, only applicable to widget which contains line
                            backgroundColor: Colors.black,

                            /// Optional, Background of the widget
                            pathBackgroundColor: Colors.black

                            /// Optional, the stroke backgroundColor
                            ),
                      ),
                      Text(
                        'Hang on....',
                        style: TextStyle(
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.normal,
                            fontSize: 25),
                      )
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Align(
                alignment: Alignment.topCenter,
                child: ListTile(
                    trailing: InkWell(
                      onTap: () {
                        Share.share(
                          widget.model.coverPhoto!.urls!.full!,
                        );
                      },
                      child: Icon(
                        Icons.ios_share,
                        color: Colors.white,
                      ),
                    ),
                    leading: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ))),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Expanded(
                flex: 1,
                child: Container(
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
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.model.title.toString(),
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        height15,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(widget
                                          .model
                                          .coverPhoto!
                                          .user!
                                          .profileImage!
                                          .medium
                                          .toString()))),
                            ),
                            width15,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.model.coverPhoto!.user!.name
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  '@${widget.model.coverPhoto!.user!.instagramUsername}',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ],
                        ),
                        height15,
                        Text(
                          widget.model.description.toString(),
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.normal),
                        ),
                        height15,
                        Text(
                          'Releated images',
                          style: TextStyle(
                              decorationColor: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.underline),
                        ),
                        height5,
                        Expanded(
                          flex: 1,
                          child: ListView.separated(
                              controller: _scrollController,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            duration:
                                                Duration(microseconds: 500),
                                            type: PageTransitionType.fade,
                                            child: ViewImageScreen(
                                              photoId: modelData[index].id,
                                            )));
                                  },
                                  child: Image.network(
                                    modelData[index].urls!.small.toString(),
                                    width: 200,
                                    height: 150,
                                    fit: BoxFit.fill,
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => width25,
                              itemCount: modelData.length),
                        ),
                        height15
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
