// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpix/core/dim.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wallpix/dashboard/home/view_image.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class TabBarItemScreen extends StatelessWidget {
  const TabBarItemScreen({super.key, required this.gridCount});

  final gridCount;

  @override
  Widget build(BuildContext context) {
    String image =
        "https://images.unsplash.com/photo-1693307418199-4af8f979e50d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1924&q=80";

    return GridView.count(
      crossAxisCount: gridCount,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      shrinkWrap: true,
      childAspectRatio: 1 / 1.5,
      children: List.generate(15, (index) {
        return GestureDetector(
          onTap: () {
            pushNewScreen(
              context,
              screen: ViewImageScreen(),
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
                  image,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Row(
                    children: [
                      Text("10k"),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Row(
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
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 5,
                  child: Text(
                    "Abstract",
                    style: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal),
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
