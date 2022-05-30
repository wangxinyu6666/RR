import 'package:flutter/cupertino.dart';
import 'package:myflutter01/douban/one_book_info.dart';
import 'package:flutter/material.dart';

class BookListWidget extends StatelessWidget {
  final String? name;
  final String subname;
  final String? rating;
  final String? rateNumbers;
  final String description;
  final String? publishInfor;
  final String detailURL;
  final String? imageURL;


  const BookListWidget({Key? key,
      @required this.name,
      this.subname = "",
      @required this.rating,
      @required this.rateNumbers,
      this.description = "",
      @required this.publishInfor,
      this.detailURL = "",
      @required this.imageURL
  });

  @override
  Widget build(BuildContext context) {
    //这个是一行展示一个书籍内容的卡片
    //准备写一个一行展示3个书籍的内容，然后用户可以点击布局风格，来切换布局
    return Card(
          //color: Color.fromARGB(220, 227, 18, 11),
          elevation: 5.0,
          margin: EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container (
                  width: 100,
                  //borderRadius: BorderRadius.circular(2),
                  child: Image.network(imageURL!, height: 150,)),
              //Image.network(imgname),ListTile
              SizedBox(width: 10),
              Expanded(
                  child: Column (
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(name!, style: TextStyle(fontSize: 20),textAlign: TextAlign.left, overflow: TextOverflow.ellipsis,),
                      SizedBox(height: 8),
                      Text(publishInfor!, textAlign: TextAlign.left,),
                      SizedBox(height: 4),

                      Row(
                        children: [
                          Text(rating!, textAlign: TextAlign.left,),
                          Text("评分"),
                          SizedBox(width: 4),
                          Text(rateNumbers!, textAlign: TextAlign.left,),
                        ],
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
  }
}