// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallpix/dashboard/category/category.dart';
import 'package:wallpix/dashboard/random/random.dart';
import 'package:wallpix/dashboard/wallet/wallet.dart';

import '../core/colors.dart';
import '../core/dim.dart';
import 'CustomappBar.dart';
import 'home/home.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

ValueNotifier<String> bottomNavigationIndex = ValueNotifier("Discover");

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

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
