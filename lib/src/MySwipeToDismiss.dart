import 'package:flutter/material.dart';

class MySwipeToDismiss extends StatefulWidget {
  // const MySwipeToDismiss({Key? key}) : super(key: key);

  @override
  _MySwipeToDismissState createState() => _MySwipeToDismissState();
}

class _MySwipeToDismissState extends State<MySwipeToDismiss> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MySwipeToDismiss"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              child: ListTile(
                title: Text('${items[index]}'),
              ),key: Key(item),
            );
          }),
    );
  }
}
