import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
      leading: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color(0xFFFDF0E5),
        ),
        child: Icon(
          Icons.event,
          size: 40.0,
          color: Color(0xFFF2A85B),
        ),
      ),
      title: Text(
        'Christmas Countdown',
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 6.0),
        child: Text(
          '1d 2h 34m 12s',
          style: TextStyle(fontSize: 13.0),
        ),
      ),
      trailing: CircleAvatar(
        radius: 13.0,
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 16.0,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
