import 'package:countdown/screens/add_event_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class FloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: kAccentColor,
      onPressed: () {
        Navigator.pushNamed(context, AddEventScreen.id);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    );
  }
}
