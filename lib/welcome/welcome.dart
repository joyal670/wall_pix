// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wallpix/core/dim.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wallpix/login/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset('assets/lottie/welcome_animation.json', height: 300),
              Text(
                ' Customize\nYour Phone',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
              ),
              height10,
              Text(
                'With latest wallpapers',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  letterSpacing: 2.4,
                  fontWeight: FontWeight.normal,
                ),
              ),
              height30,
              Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              duration: Duration(milliseconds: 400),
                              type: PageTransitionType.leftToRight,
                              child: LoginScreen()));
                    },
                    style: ButtonStyle(),
                    icon: Icon(Icons.arrow_right_alt),
                    label: Text('Customize now')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
