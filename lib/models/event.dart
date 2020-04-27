import 'package:flutter/material.dart';

class Event {
  String name = '';
  DateTime schedule = new DateTime.now();
  TimeOfDay time;

  save() {
    print('saving user using a web service');
  }
}
