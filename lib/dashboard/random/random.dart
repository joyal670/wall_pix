import 'package:flutter/material.dart';
import 'package:wallpixel/dashboard/home/tabs/recent.dart';

import '../CustomappBar.dart';
import '../home/tabItems.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RecentTab(
        gridCount: 3,
      ),
    );
  }
}
