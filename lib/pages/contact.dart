import 'package:flutter/material.dart';
import 'package:webnav2/const/mainmenu.dart';

class ContactPage extends StatefulWidget {
  ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: MainMenu(),
      ),
      body: Container(
        child: Text('Contact'),
      ),
    );
  }
}
