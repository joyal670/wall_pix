// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wallpixel/core/colors.dart';
import 'package:wallpixel/core/dim.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallpixel/dashboard/dashboard.dart';

import '../core/size_config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/login_animation.json', height: 300),
            Text(
              'Wall Pix',
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.bold,
                  fontSize: 60),
            ),
            height25,
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(left: 30, right: 30),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(milliseconds: 400),
                            type: PageTransitionType.leftToRight,
                            child: Dashboard()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  icon: Icon(
                    Icons.arrow_right_alt,
                    color: colorWhite,
                  ),
                  label: Text(
                    'Continue with google',
                    style: TextStyle(color: colorWhite),
                  )),
            ),
            height15,
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(left: 30, right: 30),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(milliseconds: 400),
                            type: PageTransitionType.leftToRight,
                            child: Dashboard()));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  icon: Icon(
                    Icons.arrow_right_alt,
                    color: colorWhite,
                  ),
                  label: Text(
                    'Continue with facebook',
                    style: TextStyle(
                      color: colorWhite,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
