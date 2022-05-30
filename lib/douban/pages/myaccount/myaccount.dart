import 'package:flutter/material.dart';

class MyAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(200, 227, 20, 11),
        title: Text("我的书架"),
      ),
      body: MyAccountPageContent(),
    );
  }
}

class MyAccountPageContent extends StatefulWidget {
  @override
  _MyAccountPageContentState createState() => _MyAccountPageContentState();
}

class _MyAccountPageContentState extends State<MyAccountPageContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("我的账户", style: TextStyle(fontSize: 30, color: Colors.green),),
    );
  }
}