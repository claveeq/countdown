import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'form_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EventCard(),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        backgroundColor: Colors.black,
        icon: const Icon(Icons.alarm_add),
        label: const Text('Add an Event'),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormPage()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
            )),
          ],
        ),
      ),
    );
  }
}
