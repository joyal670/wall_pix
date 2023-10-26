// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wallpixel/dashboard/category/category.dart';
import 'package:wallpixel/dashboard/random/random.dart';
import 'package:wallpixel/dashboard/wallet/wallet.dart';

import '../core/colors.dart';
import '../core/dim.dart';
import 'CustomappBar.dart';
import 'home/home.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

ValueNotifier<String> bottomNavigationIndex = ValueNotifier("Discover");

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  var scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const CategoryScreen(),
      const RandomScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.grey,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.category),
        title: "Category",
        activeColorPrimary: Colors.grey,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.sync),
        title: "Random",
        activeColorPrimary: Colors.grey,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          backgroundColor: colorBlack,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Welcome,',
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                    ),
                    Text(
                      'Finish sign in to continue.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              ListTile(
                splashColor: colorCodGrey,
                title: const Text(
                  'Home',
                  style: TextStyle(
                    color: colorWhite,
                  ),
                ),
                leading: Icon(
                  Icons.grid_view,
                  color: colorWhite,
                ),
                onTap: () {
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                splashColor: colorCodGrey,
                leading: Icon(
                  Icons.star_border,
                  color: colorWhite,
                ),
                title: const Text(
                  'Favorites',
                  style: TextStyle(color: colorWhite),
                ),
                onTap: () {
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                splashColor: colorCodGrey,
                leading: Icon(
                  Icons.history,
                  color: colorWhite,
                ),
                title: const Text(
                  'History',
                  style: TextStyle(color: colorWhite),
                ),
                onTap: () {
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                splashColor: colorCodGrey,
                leading: Icon(
                  Icons.mail_outline,
                  color: colorWhite,
                ),
                title: const Text(
                  'Support',
                  style: TextStyle(color: colorWhite),
                ),
                onTap: () {
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(65),
            child: CustomAppBar(
              title: _controller.index,
            )),
        body: SafeArea(
          child: PersistentTabView(
            context,
            controller: _controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            confineInSafeArea: true,
            backgroundColor: Colors.black, // Default is Colors.white.
            handleAndroidBackButtonPress: true, // Default is true.
            resizeToAvoidBottomInset:
                true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
            stateManagement: true, // Default is true.
            hideNavigationBarWhenKeyboardShows:
                true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.zero,
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: false,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: ItemAnimationProperties(
              // Navigation Bar's items animation properties.
              duration: Duration(milliseconds: 200),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimation(
              // Screen transition animation on change of selected tab.
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            onItemSelected: (value) {
              switch (value) {
                case 0:
                  {
                    bottomNavigationIndex.value = "Discover";
                  }
                case 1:
                  {
                    bottomNavigationIndex.value = "Category";
                  }
                case 2:
                  {
                    bottomNavigationIndex.value = "Random";
                  }
              }
            },
            navBarStyle: NavBarStyle
                .style7, // Choose the nav bar style with this property.
          ),
        ),
      ),
    );
  }
}
