
import 'package:flutter/material.dart';
import 'package:http_pra/src/AnimatedOpacity.dart';
import 'package:http_pra/src/MyFormValidation.dart';
import 'package:http_pra/src/MyMethodChannel.dart';
import 'package:http_pra/src/MyOrientation.dart';
import 'package:http_pra/src/MySnackBar.dart';
import 'package:http_pra/src/MySwipeToDismiss.dart';
import 'package:http_pra/src/MyTabController.dart';
import 'src/MyDrawer.dart';
import 'src/MyAnimatedContainer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tutorial'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('AnimatedContainer'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedContainer()));
          },
        ),
        ListTile(
          title: Text('AnimatedOpacity'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
          },
        ),
        ListTile(
          title: Text('DrawerPage'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyDrawer()));
          },
        ),
        ListTile(
          title: Text('SnackBar!'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MySnackBar()));
          },
        ),
        ListTile(
          title: Text('meet the Orientation Bar!'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrientation()));
          },
        ),
        ListTile(
          title: Text('Tab!'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyTabController()));
          },
        ),
        ListTile(
          title: Text('Move to Form Valiation'),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyFormValidation()));
          },
        ),
        ListTile(
          title: Text("Let's get Swipe to Dismiss "),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MySwipeToDismiss()));
          },
        ),
        ListTile(
          title: Text("Connect to Native Code"),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyMethodChannel()));
          },
        ),
      ],
    );
  }
}
