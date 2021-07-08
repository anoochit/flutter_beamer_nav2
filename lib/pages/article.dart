import 'package:flutter/material.dart';
import 'package:webnav2/const/mainmenu.dart';

class ArticlePage extends StatefulWidget {
  ArticlePage({Key? key}) : super(key: key);

  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainMenu(),
      ),
      body: Container(
        child: Text('Article'),
      ),
    );
  }
}
