import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_clone/theme/pallete.dart';

import 'assets_constants.dart';

class UIConstants {
  static AppBar appBar() {
    return AppBar(
      title: SvgPicture.asset(
        AssetsConstants.twitterLogo,
        color: Pallete.blueColor,
        height: 30,
      ),
      centerTitle: true,
    );
  }

  static List<TabRoute> tabBarRoutes = [
    TabRoute(
      routeName: const Text('Home screen'),
      activeIcon: AssetsConstants.homeFilledIcon,
      inActiveIcon: AssetsConstants.homeOutlinedIcon,
    ),
    TabRoute(
      routeName: const Text('Search screen'),
      activeIcon: AssetsConstants.searchIcon,
      inActiveIcon: AssetsConstants.searchIcon,
    ),
    TabRoute(
      routeName: const Text('Notification screen'),
      activeIcon: AssetsConstants.notifFilledIcon,
      inActiveIcon: AssetsConstants.notifOutlinedIcon,
    ),
  ];
}

class TabRoute {
  final Text routeName;
  final String activeIcon;
  final String inActiveIcon;
  final Color iconColor;

  TabRoute({
    required this.routeName,
    required this.activeIcon,
    required this.inActiveIcon,
    this.iconColor = Colors.white,
  });

  SvgPicture getIcon({
    required int page,
    required int index,
  }) {
    final String icon = page == index ? activeIcon : inActiveIcon;

    return SvgPicture.asset(
      icon,
      colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
    );
  }
}
