import 'package:flutter/material.dart';
import 'package:webnav2/const.dart';
import 'package:beamer/beamer.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlutterLogo(),
        Text('My Web'),
        Spacer(),
        for (int i = 0; i < listMenu.length; i++)
          InkWell(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Text(listMenu[i]),
            ),
            onTap: () {
              switch (i) {
                case 0:
                  context.beamToNamed('/');
                  break;
                case 1:
                  context.beamToNamed('/article');
                  break;
                case 2:
                  context.beamToNamed('/blog');
                  break;
                case 3:
                  context.beamToNamed('/contact');
                  break;

                default:
                  context.beamToNamed('/');
              }
            },
          ),
      ],
    );
  }
}
