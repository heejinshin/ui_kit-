import 'package:flutter/material.dart';

class MyMethodChannel extends StatefulWidget {
  // const MyMethodChannel({Key? key}) : super(key: key);

  @override
  _MyMethodChannelState createState() => _MyMethodChannelState();
}

class _MyMethodChannelState extends State<MyMethodChannel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MethodChannel"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('네이티브 값'),
          ElevatedButton(onPressed: (){

          }
          , child: Text('값 얻기'))
        ],
      ),
    );
  }
}
