import 'package:countdown/constants.dart';
import 'package:countdown/widgets/bottom_nav_bar.dart';
import 'package:countdown/widgets/event_list.dart';
import 'package:countdown/widgets/floating_button.dart';
import 'package:countdown/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventsScreen extends StatelessWidget {
  static const id = 'events_screen';

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50.0),
      ),
    );
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: TopBar(
          backgroundColor: kBackgroundColor,
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              EventTile(boxDecoration: boxDecoration),
              EventTile(boxDecoration: boxDecoration),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingButton(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class EventTile extends StatelessWidget {
  const EventTile({
    Key key,
    @required this.boxDecoration,
  }) : super(key: key);

  final BoxDecoration boxDecoration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hi,',
                style: kGreetingsTextStyle,
              ),
              Text(
                'Clave',
                style: kNameTextStyle,
              ),
              SizedBox(height: 20.0),
              TextField(
                autofocus: true,
                style: TextStyle(color: Colors.white),
                decoration: kSearchInputDecoration,
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: 35.0, left: 30.0, right: 30.0),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Up Next',
                      style: kContentHeaderTextStyle,
                    ),
                    IconButton(
                      onPressed: () {},
                      tooltip: 'Filter event',
                      icon: Icon(
                        FontAwesomeIcons.slidersH,
                        size: 25.0,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                EventsList()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
