import 'package:flutter/material.dart';
import 'package:wallpix/splash/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          useMaterial3: true,
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        ),
        home: const SplashScreen());
  }
}
