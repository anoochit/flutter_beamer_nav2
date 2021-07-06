import 'package:flutter/material.dart';
import 'package:webnav2/mainmenu.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainMenu(),
      ),
      body: Container(
        child: Text('Home'),
      ),
    );
  }
}
