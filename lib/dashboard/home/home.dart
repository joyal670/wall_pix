// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpixel/core/dim.dart';
import 'package:wallpixel/dashboard/CustomappBar.dart';
import 'package:wallpixel/dashboard/category/category.dart';
import 'package:wallpixel/dashboard/home/tabItems.dart';
import 'package:wallpixel/dashboard/home/tabs/latest.dart';
import 'package:wallpixel/dashboard/home/tabs/oldest.dart';
import 'package:wallpixel/dashboard/home/tabs/popular.dart';
import 'package:wallpixel/dashboard/home/tabs/recent.dart';
import 'package:wallpixel/dashboard/wallet/wallet.dart';

import '../../api/api.dart';
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
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // df(context);

    // _tabController.addListener(() {
    //   TabBarItemScreen(
    //     gridCount: 2,
    //   ).tabName = "popular";
    // });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height10,
          TabBar(
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.w200, fontSize: 14),
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  fontStyle: FontStyle.normal),
              controller: _tabController,
              labelColor: Colors.white,
              indicatorColor: colorWhite,
              isScrollable: true,
              indicatorWeight: .5,
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
                  child: Text('Popular'),
                ),
                Tab(
                  child: Text('Latest'),
                ),
                Tab(
                  child: Text('Oldest'),
                ),
              ]),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                RecentTab(
                  gridCount: 2,
                ),
                PopularTab(),
                LatestTab(),
                OldestTab(),
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
