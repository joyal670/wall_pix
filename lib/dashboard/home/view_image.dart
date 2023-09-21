// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpix/core/dim.dart';
import 'package:wallpix/model/photo_model.dart';

import '../../api/api.dart';

class ViewImageScreen extends StatelessWidget {
  ViewImageScreen({super.key, required this.photoId});

  final photoId;

  Future<PhotoModel> getPhoto() async {
    PhotoModel mod = await ApiClass.instance.getPhoto(photoId.toString());
    return mod;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              Image.asset(
                'assets/images/download.png',
                width: 40,
                height: 50,
              ),
              Icon(
                Icons.share,
                color: Colors.white,
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
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ));
  }
}
