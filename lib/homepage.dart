import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: EventCard(),
        floatingActionButton: FloatingActionButton.extended(
          elevation: 4.0,
          backgroundColor: Colors.black,
          icon: const Icon(Icons.add),
          label: const Text('Add an Event'),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class EventCard extends StatelessWidget {
  EventCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.timer),
              title: Text(
                'Christmas Countdown',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Center(
              child: Text(
                '1d 2h 34m 12s',
                style: TextStyle(fontSize: 40),
              )
            ),
          ],
        ),
      ),
    );
  }
}
