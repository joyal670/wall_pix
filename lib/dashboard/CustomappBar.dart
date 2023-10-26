// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpixel/core/colors.dart';
import 'package:wallpixel/dashboard/home/search.dart';

import '../core/dim.dart';
import 'package:page_transition/page_transition.dart';
import 'dashboard.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});

  final title;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bottomNavigationIndex,
      builder: (context, String index, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            width10,
            InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset(
                "assets/images/menu.png",
                width: 40,
                height: 40,
              ),
            ),
            width15,
            Text(
              index.toString(),
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.bold,
                  fontSize: 50),
            ),
            width40,
            if (index.toString() == "Discover")
              Expanded(
                flex: 1,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              duration: Duration(microseconds: 500),
                              type: PageTransitionType.fade,
                              child: SearchScreen()));
                    },
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: colorGrey, width: 1),
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    )),
              ),
            width15
          ],
        );
      },
    );
  }
}
