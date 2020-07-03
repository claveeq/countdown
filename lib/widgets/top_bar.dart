import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;

  TopBar({@required this.backgroundColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: iconColor,
        size: 30.0,
      ),
      leading: IconButton(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        icon: Icon(
          Icons.menu,
          color: iconColor,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          icon: Icon(
            FontAwesomeIcons.bell,
            size: 20,
            color: iconColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          icon: Icon(
            FontAwesomeIcons.user,
            size: 20,
            color: iconColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 15.0)
      ],
    );
  }
}
