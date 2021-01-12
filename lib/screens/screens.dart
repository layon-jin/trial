import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trial/MyOrders.dart';
import 'package:trial/NewOrder.dart';
import 'package:trial/profile/profile.dart';

class TabNavigationItem {
  final Widget page;
  final String title;
  final Widget icon;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: Page1('home'),
          icon: Icon(Icons.home),
          title: "Home",
        ),
        TabNavigationItem(
          page: Page1('New Order'),
          icon: Icon(Icons.add_box),
          title: "New Order",
        ),
        TabNavigationItem(
          page: Page2(),
          icon: Icon(Icons.shopping_cart),
          title: "My Orders",
        ),
        TabNavigationItem(
          page: Profile(),
          icon: Icon(Icons.person),
          title: "Profile",
        ),
        TabNavigationItem(
          page: Page2(),
          icon: Icon(Icons.settings),
          title: "Settings",
        ),
      ];
}
