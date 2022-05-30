import 'package:flutter/material.dart';

class MyBottomBarItem extends BottomNavigationBarItem {
  MyBottomBarItem(String iconName, String title)
      : super(
    label: title,
    icon: Image.asset("assets/images/tabbar/${iconName}.png", width: 32,),
    activeIcon: Image.asset("assets/images/tabbar/${iconName}.png", width: 32,),
  );
}