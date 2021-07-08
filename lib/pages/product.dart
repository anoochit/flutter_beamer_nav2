import 'package:flutter/material.dart';
import 'package:webnav2/const/mainmenu.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainMenu(),
      ),
      body: Container(
        child: Text('Product'),
      ),
    );
  }
}
