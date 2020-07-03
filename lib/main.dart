import 'package:countdown/screens/add_event_screen.dart';
import 'package:countdown/screens/events_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        EventsScreen.id: (context) => EventsScreen(),
        AddEventScreen.id: (context) => AddEventScreen()
      },
      initialRoute: EventsScreen.id,
      debugShowCheckedModeBanner: false,
    );
  }
}
