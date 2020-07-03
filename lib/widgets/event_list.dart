import 'package:countdown/widgets/event_card.dart';
import 'package:flutter/material.dart';

class EventsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(top: 10.0),
        children: <Widget>[
          EventTile(),
          EventTile(),
          EventTile(),
          EventTile(),
        ],
      ),
    );
  }
}
