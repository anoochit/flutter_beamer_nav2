import 'package:flutter/material.dart';
import 'package:webnav2/const.dart';
import 'package:webnav2/mainmenu.dart';

class BlogPage extends StatefulWidget {
  BlogPage({Key? key}) : super(key: key);

  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainMenu(),
      ),
      body: Container(
        child: Text('Blog'),
      ),
    );
  }
}
