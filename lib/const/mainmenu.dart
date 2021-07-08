import 'package:flutter/material.dart';
import 'package:webnav2/const/const.dart';
import 'package:beamer/beamer.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        FlutterLogo(),
        Text('My Web'),
        Spacer(),
        // show popupmenu if in mobile size breaking point 520
        (scWidth > 520)
            ? Flex(
                direction: Axis.horizontal,
                children: [
                  for (int i = 0; i < listMenu.length; i++)
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(listMenu[i].title),
                      ),
                      onTap: () {
                        context.beamToNamed(listMenu[i].link);
                      },
                    ),
                ],
              )
            : PopupMenuButton(
                icon: Icon(Icons.menu),
                itemBuilder: (context) => <PopupMenuEntry>[
                  for (int i = 0; i < listMenu.length; i++)
                    PopupMenuItem<String>(
                      value: listMenu[i].link,
                      child: Text(listMenu[i].title),
                    )
                ],
                onSelected: (value) {
                  Beamer.of(context).beamToNamed(value.toString());
                },
              )
      ],
    );
  }
}
