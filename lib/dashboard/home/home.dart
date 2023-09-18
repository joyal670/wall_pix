// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpix/core/dim.dart';
import 'package:wallpix/dashboard/CustomappBar.dart';
import 'package:wallpix/dashboard/category/category.dart';
import 'package:wallpix/dashboard/home/tabItems.dart';
import 'package:wallpix/dashboard/wallet/wallet.dart';

import '../../core/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // df(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height10,
          TabBar(
              controller: _tabController,
              labelColor: Colors.white,
              indicatorColor: colorWhite,
              isScrollable: true,
              indicatorWeight: 1,
              unselectedLabelColor: Colors.grey,
              dividerColor: Colors.transparent,
              indicatorPadding: EdgeInsets.only(bottom: 10),
              tabs: [
                Tab(
                  child: Text(
                    'Recent Views',
                  ),
                ),
                Tab(
                  child: Text('Downloaded'),
                ),
                Tab(
                  child: Text('Liked'),
                ),
                Tab(
                  child: Text('Uploaded'),
                ),
                Tab(
                  child: Text('Downloaded'),
                )
              ]),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                TabBarItemScreen(
                  gridCount: 2,
                ),
                TabBarItemScreen(
                  gridCount: 2,
                ),
                TabBarItemScreen(
                  gridCount: 2,
                ),
                TabBarItemScreen(
                  gridCount: 2,
                ),
                TabBarItemScreen(
                  gridCount: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void df(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
}
