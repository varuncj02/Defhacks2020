import 'package:flutter/material.dart';

class Accepted extends StatelessWidget {
  static const routeName = '/Accepted';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Job Accepted")),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 240),
            alignment: Alignment.center,
            child: Column(children: <Widget> [
              Expanded(
                child: Icon(
                Icons.done,
                size: 100,
              ),
              ),
              Container(
                child:Text("You have Accepted this Job"),
              ),
            ])));
  }
}
