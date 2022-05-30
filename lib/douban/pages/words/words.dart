import 'package:flutter/material.dart';
import 'package:myflutter01/douban/widgets/book_gridview.dart';
import 'package:myflutter01/douban/widgets/book_item_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:myflutter01/douban/widgets/book_listview.dart';

class MyWordsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200, 227, 20, 11),
        title: Text("我的单词"),
      ),
      body: MyWordsPageContent(),
    );
  }
}

class MyWordsPageContent extends StatefulWidget {

  @override
  _MyWordsPageContentState createState() => _MyWordsPageContentState();
}

class _MyWordsPageContentState extends State<MyWordsPageContent> {
  String bookTitle = "";
  String bookImageURL = "";

  final List list = [];
  //将每一本书动态生成
  // List getData(){
  //   for(int i=0;i<20;i++){
  //     bookTitle = allBookInfo[i]["name"];
  //     bookImageURL = allBookInfo[i]["imageURL"];
  //     print(bookTitle);
  //     print(bookImageURL);
  //     print("----------------------------------");
  //     list.add();
  //
  // }

  @override
  Widget build(BuildContext context) {
    /* 用于开始时写死数据测试
      String bookTitle = "红楼梦";
      String bookImageURL = "https://img1.doubanio.com/view/subject/s/public/s1070959.jpg";
   */
    return Wrap(
        //crossAxisCount: 3,
        //childAspectRatio: 2/2.8,


        children: List.generate(20, (i){
          return Card(
              child: Column(
                children: [
                  Container(
                    //width:110,
                    height: 160,
                    color: Colors.green,
                    child: Image.network(allBookInfo[i]["imageURL"]),
                  ),
                  Text(
                    allBookInfo[i]["name"],
                    style: TextStyle(fontSize: 20),
                    overflow:TextOverflow.ellipsis,),
                ],
              )
          );
        }),
        // [ //这是手动的卡片元素
        //   Card(
        //       child: Column(
        //         children: [
        //           Container(
        //             //width:200,
        //             //height: 110,
        //             color: Colors.green,
        //             child: Image.network(bookImageURL),
        //           ),
        //           Text(bookTitle),
        //         ],
        //       )
        //   ),
        //   Card(
        //       child: Column(
        //         children: [
        //           Container(
        //             //width:100,
        //             //height: 100,
        //             color: Colors.green,
        //             child: Image.network(bookImageURL),
        //           ),
        //           Text(bookTitle),
        //         ],
        //       )
        //   ), ///card
        //   Card(
        //       child: Column(
        //         children: [
        //           Container(
        //             //width:100,
        //             //height: 100,
        //             color: Colors.green,
        //             child: Image.network(bookImageURL),
        //           ),
        //           Text(bookTitle),
        //         ],
        //       )
        //   ), ///card
        //   Card(
        //       child: Column(
        //         children: [
        //           Container(
        //             //width:100,
        //             //height: 100,
        //             color: Colors.green,
        //             child: Image.network(bookImageURL),
        //           ),
        //           Text(bookTitle),
        //         ],
        //       )
        //   ), ///card
        //   Card(
        //       child: Column(
        //         children: [
        //           Container(
        //             //width:100,
        //             //height: 100,
        //             color: Colors.green,
        //             child: Image.network(bookImageURL),
        //           ),
        //           Text(bookTitle),
        //         ],
        //       )
        //   ),
        //   Card(
        //       child: Column(
        //         children: [
        //           Container(
        //             //width:100,
        //             //height: 100,
        //             color: Colors.green,
        //             child: Image.network(bookImageURL),
        //           ),
        //           Text(bookTitle),
        //         ],
        //       )
        //   ),
        // ]
    );
  }//build
}