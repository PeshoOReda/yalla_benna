import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla_benna/HomeScreen/search/search.dart';
import 'package:yalla_benna/HomeScreen/watch_list/watch_list.dart';
import 'package:yalla_benna/core/colors_manager.dart';

import '../core/assets_manager.dart';
import 'browse/browse.dart';
import 'home/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> tabs = [
    const Home(),
    const Search(),
    const Browse(),
    const WatchList(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorsManager.bgColor,
      ),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: ColorsManager.bgTabs,
          onTap: (index) {
            setState(
              () {
                selectedIndex = index; // 1
              },
            );
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: ColorsManager.bgTabs,
              icon: SvgPicture.asset(
                AssetsManager.homeIcon,
                color: selectedIndex == 0
                    ? ColorsManager.isSelectedTab
                    : ColorsManager.unSelectedTab,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: ColorsManager.bgTabs,
              icon: SvgPicture.asset(
                AssetsManager.searchIcon,
                color: selectedIndex == 1
                    ? ColorsManager.isSelectedTab
                    : ColorsManager.unSelectedTab,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              backgroundColor: ColorsManager.bgTabs,
              icon: SvgPicture.asset(
                AssetsManager.browseIcon,
                color: selectedIndex == 2
                    ? ColorsManager.isSelectedTab
                    : ColorsManager.unSelectedTab,
              ),
              label: 'Browse',
            ),
            BottomNavigationBarItem(
              backgroundColor: ColorsManager.bgTabs,
              icon: SvgPicture.asset(
                AssetsManager.watchListIcon,
                color: selectedIndex == 3
                    ? ColorsManager.isSelectedTab
                    : ColorsManager.unSelectedTab,
              ),
              label: 'Watch List',
            ),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
