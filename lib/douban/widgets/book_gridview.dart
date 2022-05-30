import 'package:flutter/material.dart';

class GridViewBook extends StatelessWidget {
  final String? imageURL;
  final String? bookName;

  const GridViewBook({
    Key? key,
    @required this.imageURL,
    @required this.bookName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, {String? imageURL, String? bookName}) {
    return GridView.count(
        crossAxisCount: 3,
        children: [
          Card(
              child: Column(
                children: [
                  Container(
                    //width:100,
                    //height: 100,
                    color: Colors.green,
                    child: Image.network(imageURL!),
                  ),
                  Text(bookName!),
                ],
              )
          ) //card
        ]);
  }
}