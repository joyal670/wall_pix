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
import 'package:wallpixel/core/colors.dart';
import 'package:wallpixel/core/dim.dart';
import 'package:wallpixel/model/photo_model.dart';
import 'package:loading_indicator/loading_indicator.dart';
import '../../api/api.dart';
import 'package:path/path.dart';
import 'package:downloads_path_provider_28/downloads_path_provider_28.dart';
import 'package:share_plus/share_plus.dart';

class ViewImageScreen extends StatefulWidget {
  ViewImageScreen({super.key, required this.photoId});

  final photoId;

  @override
  State<ViewImageScreen> createState() => _ViewImageScreenState();
}

class _ViewImageScreenState extends State<ViewImageScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  PhotoModel model = PhotoModel();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.animateTo(5.0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Future<PhotoModel> getPhoto() async {
    model = await ApiClass.instance.getPhoto(widget.photoId.toString());
    return model;
  }

  Future<void> downloadAndSaveImage(
      String imageUrl, String name, BuildContext context) async {
    try {
      _showDialog(context);

      // Get the downloads directory
      Directory? downloadsDirectory =
          await DownloadsPathProvider.downloadsDirectory;
      final customDirectory = Directory('${downloadsDirectory!.path}/wall pix');

      // Create the custom folder if it doesn't exist
      if (!customDirectory.existsSync()) {
        customDirectory.createSync();
      }

      // Define the file path where you want to save the image
      String filePath = '${customDirectory.path}/$name.jpg';

      // Initialize Dio for making HTTP requests
      Dio dio = Dio();

      // Download the image
      await dio.download(imageUrl, filePath);
      print('Image downloaded to: $filePath');
      Navigator.of(context).pop();
      showSnackBar(context, 'Save to $filePath');
    } catch (error) {
      Navigator.of(context).pop();
      showSnackBar(context, 'something went wrong');
      print('Error downloading image: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        bottomNavigationBar: SizedBox(
          height: 60,
          child: Column(
            children: [
              // LinearProgressIndicator(
              //   value: controller.value,
              //   backgroundColor: colorWhite,
              //   color: colorBlue,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      ShowBottomSheet(context);
                    },
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      downloadAndSaveImage(
                          model.urls!.full!, model.slug!, context);
                    },
                    child: Image.asset(
                      'assets/images/download.png',
                      width: 40,
                      height: 50,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Share.share(
                        model.urls!.full!,
                      );
                    },
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            FutureBuilder<PhotoModel>(
              future: getPhoto(),
              builder: (context, AsyncSnapshot<PhotoModel> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If we got an error
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '${snapshot.error} occurred',
                        style: TextStyle(fontSize: 18),
                      ),
                    );

                    // if we got our data
                  } else if (snapshot.hasData) {
                    // Extracting data from snapshot object
                    final data = snapshot.data as PhotoModel;
                    return Stack(
                      children: [
                        Image.network(
                          data.urls!.full.toString(),
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            // return Center(
                            //     child: CircularProgressIndicator(
                            //   value: loadingProgress.expectedTotalBytes != null
                            //       ? loadingProgress.cumulativeBytesLoaded /
                            //           loadingProgress.expectedTotalBytes!
                            //       : null,
                            // ));
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
                                    'a little more....',
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
                                trailing: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  data.slug.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  maxLines: 2,
                                ),
                                subtitle: Text(
                                  data.altDescription.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
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
                      ],
                    );
                  }
                }

                // Displaying LoadingSpinner to indicate waiting state
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: LoadingIndicator(
                            indicatorType: Indicator.orbit,

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
                        'Loading, hang on....',
                        style: TextStyle(
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.normal,
                            fontSize: 18),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ));
  }

  showSnackBar(BuildContext context, String msg) {
    final snackBar = SnackBar(
      content: Text(
        msg,
        style: TextStyle(),
      ),
    );

    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> _showDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
              elevation: 0,
              backgroundColor: Colors.transparent,
              content: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset('assets/lottie/download_animation.json',
                        height: 300),
                    Text(
                      'Downloading.......',
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )
                  ],
                ),
              ),
            ));
  }

  Future<dynamic> ShowBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.blue.withAlpha(20),
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                height20,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.label,
                      color: colorWhite,
                    ),
                    width10,
                    Expanded(
                      child: Text(
                        model.slug!,
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                ),
                height10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.details,
                      color: colorWhite,
                      size: 16,
                    ),
                    width10,
                    Expanded(
                      child: Text(
                        model.description ?? model.altDescription.toString(),
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
                height10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.person,
                      color: colorWhite,
                      size: 16,
                    ),
                    width10,
                    Expanded(
                      child: Text(
                        model.user!.name!,
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
                height10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.explore,
                      color: colorWhite,
                      size: 16,
                    ),
                    width10,
                    Text(
                      model.user!.location.toString(),
                      style: TextStyle(fontSize: 14),
                    ),
                    width25,
                    Icon(
                      Icons.thumb_up,
                      color: colorWhite,
                      size: 16,
                    ),
                    width10,
                    Text(
                      model.user!.totalLikes.toString(),
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
                height30
              ],
            ),
          );
        });
  }
}
