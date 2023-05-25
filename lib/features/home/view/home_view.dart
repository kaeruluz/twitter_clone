import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/theme/pallete.dart';

class HomeView extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const HomeView());

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _page = 0;
  final appBar = UIConstants.appBar();

  void onPageChanged(int index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: IndexedStack(
        index: _page,
        children: UIConstants.bottomTabBarPages,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
          currentIndex: _page,
          onTap: onPageChanged,
          backgroundColor: Pallete.backgroundColor,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  _page == 0
                      ? AssetsConstants.homeFilledIcon
                      : AssetsConstants.homeOutlinedIcon,
                  color: Pallete.whiteColor),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  _page == 1
                      ? AssetsConstants.searchIcon
                      : AssetsConstants.searchIcon,
                  color: Pallete.whiteColor),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  _page == 2
                      ? AssetsConstants.notifFilledIcon
                      : AssetsConstants.notifOutlinedIcon,
                  color: Pallete.whiteColor),
            ),
          ]),
    );
  }
}
