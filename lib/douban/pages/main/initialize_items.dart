import 'package:flutter/material.dart';
import '../bookshelf/bookshelf.dart';
import '../books/books.dart';
import '../words/words.dart';
import '../myaccount/myaccount.dart';

List<MyBottomBarItem> items = [
  MyBottomBarItem("bookshelf", "书架"),
  MyBottomBarItem("books", "类型"),
  MyBottomBarItem("words", "单词"),
  MyBottomBarItem("myaccount", "我的"),
];

List<Widget> pages = [
  MyBookshelfPage(),
  MyBooksPage(),
  MyWordsPage(),
  MyAccountPage(),
];

class MyBottomBarItem extends BottomNavigationBarItem {
  MyBottomBarItem(String iconName, String title)
      : super(
    icon: Image.asset("assets/images/tabbar/${iconName}1.png", width: 32,),
    label: title,
    activeIcon: Image.asset("assets/images/tabbar/${iconName}.png", width: 32,),
  );
}