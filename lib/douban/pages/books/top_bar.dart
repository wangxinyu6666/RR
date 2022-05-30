import 'package:flutter/material.dart';


class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      //导航栏的长度
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            height: 0,
            color: Colors.blue,
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded (
                //crossAxisAlignment: CrossAxisAlignment.start,

                child: TabBar(
                  isScrollable: true, //可滚动
                  indicatorColor: Colors.white, //指示器的颜色
                  labelColor: Colors.black, //选中文字颜色
                  unselectedLabelColor: Colors.white, //为选中文字颜色
                  indicatorWeight: 5.0,
                  indicatorSize: TabBarIndicatorSize.label, //指示器与文字等宽
                tabs: <Widget>[
                  Tab(
                    child: Text("初级", style: TextStyle(fontSize: 20),),
                  ),
                  Tab(
                    child: Text("中级", style: TextStyle(fontSize: 20),),
                  ),
                  Tab(
                    child: Text("高级", style: TextStyle(fontSize: 20),),
                  ),
                  Tab(
                    child: Text("其他", style: TextStyle(fontSize: 20),),
                  ),
                ],
              ),
              )
            ],
          ),
          backgroundColor: Color.fromARGB(200, 227, 20, 11),
          //centerTitle: true,
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("四级", style: TextStyle(fontSize: 50, color: Colors.red),),
            ),
            Center(
                 child: Text("六级", style: TextStyle(fontSize: 50, color: Colors.red),),
                ),
            Center(
                child: Text("专八", style: TextStyle(fontSize: 50, color: Colors.red),),
                ),
            Center(
              child: Text("雅思、托福、GRE", style: TextStyle(fontSize: 50, color: Colors.red),),
            ),
          ],
        ),
        ),
    );
  }
}
