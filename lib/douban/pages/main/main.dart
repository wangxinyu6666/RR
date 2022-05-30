//MyHomePage类
import 'package:flutter/material.dart';
import 'initialize_items.dart';
import 'package:flutter/services.dart';
class MyMainPage extends StatefulWidget {
  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);//隐藏状态栏，底部按钮栏
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);//隐藏状态栏，保留底部按钮栏
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);//显示状态栏、底部按钮栏

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //设置状态栏透明
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
        //样式
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        //数据元素
        items: items,
        onTap: (index){
          var name = items[index].label;
          print(name);
          setState(() {
             _currentIndex = index;
          });
        },
      ),
    );
  }
}