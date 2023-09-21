// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wallpix/welcome/welcome.dart';
import 'package:page_transition/page_transition.dart';

import '../core/size_config.dart';
import '../login/login.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isFullSun = false;
  bool isDayMood = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        isFullSun = true;
        isDayMood = true;
      });
    });

    Future.delayed(Duration(seconds: 3), () {
      navigateToLoginPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = [
      Color(0xFF8C2480),
      Color(0xFFCE587D),
      Color(0xFFFF9485),
      if (isFullSun) Color(0xFFFF9D80),
    ];

    var darkBgColors = [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];
    SizeConfig().init(context);

    return AnimatedContainer(
      duration: Duration(seconds: 3),
      curve: Curves.easeInOut,
      width: double.infinity,
      height: SizeConfig.screenHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isDayMood ? lightBgColors : darkBgColors,
        ),
      ),
      child: Stack(children: [
        AnimatedPositioned(
            duration: Duration(seconds: 2),
            curve: Curves.easeInOut,
            left: getProportionateScreenWidth(30),
            bottom: getProportionateScreenWidth(isFullSun ? -45 : -120),
            child: SvgPicture.asset("assets/svg/sun.svg")),
        Positioned(
          bottom: getProportionateScreenWidth(-65),
          left: 0,
          right: 0,
          child: Image.asset(
            "assets/images/land_tree_light.png",
            height: getProportionateScreenWidth(430),
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTextStyle(
                  style: TextStyle(),
                  child: Text(
                    'Welcome to',
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(),
                  child: Text(
                    'Wall Pix',
                    style: TextStyle(
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Future<void> navigateToLoginPage() async {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
              duration: Duration(microseconds: 500),
              type: PageTransitionType.fade,
              child: WelcomeScreen()));
    });
  }
}
