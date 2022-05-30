import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:myflutter01/douban/model/one_book_infor_entity.dart";
import 'package:myflutter01/service/bookshelf_request.dart';
import 'package:myflutter01/douban/widgets/book_listview.dart';
import 'package:myflutter01/douban/widgets/book_item_data.dart';

import '../../one_book_info.dart';

class MyBookshelfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200, 227, 20, 11),
        title: Text("豆瓣书籍Top250"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more),
            onPressed: (){
              print("弹出对话框");
            },
          ),

        ],
      ),
      body: MyBookshelfContent(),
    );
  }
}

class MyBookshelfContent extends StatefulWidget {
  @override
  _MyBookshelfContentState createState() => _MyBookshelfContentState();
}

class _MyBookshelfContentState extends State<MyBookshelfContent> {
  //final List<MovieItem> books = [];
  String bookTitle = "";
  String bookImageURL = "";
  String publishInfor = "";
  String rating = "";
  String rateNumbers = "";

  final List<Widget> list = [];

  @override
  void initState() {
    super.initState();
  }

  //将每一本书动态生成
  List<Widget> getData(){

    for(int i=0;i<20;i++){
      bookTitle = allBookInfo[i]["name"];
      bookImageURL = allBookInfo[i]["imageURL"];
      publishInfor= allBookInfo[i]["publishInfor"];
      rating= allBookInfo[i]["rating"];
      rateNumbers= allBookInfo[i]["rateNumbers"];

      // print(bookTitle);
      // print(bookImageURL);
      // print(publishInfor);
      // print(rating);
      // print(rateNumbers);
      // print("----------------------------------");

      list.add(
          BookListWidget(
            name: bookTitle,
            imageURL: bookImageURL,
            publishInfor: publishInfor,
            rating: rating,
            rateNumbers: rateNumbers,
            ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getData(),
    );
  }
}
