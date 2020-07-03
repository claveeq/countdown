import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false, // <-- HERE
      showUnselectedLabels: false, // <-- AND HERE
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.clipboard,
            color: kAccentColor,
          ),
          title: Text('title'),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: Colors.black26,
          ),
          title: Text('title'),
        )
      ],
      currentIndex: 0,
    );
  }
}
