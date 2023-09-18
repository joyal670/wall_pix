import 'package:flutter/material.dart';

import '../CustomappBar.dart';
import '../home/tabItems.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarItemScreen(
        gridCount: 3,
      ),
    );
  }
}
