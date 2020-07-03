import 'package:countdown/widgets/bottom_nav_bar.dart';
import 'package:countdown/widgets/top_bar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class AddEventScreen extends StatelessWidget {
  static const id = 'add_event_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: TopBar(
          backgroundColor: Colors.white,
          iconColor: Colors.black54,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.calendar_today,
                    color: kAccentColor,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '24/11/2019',
                      style: TextStyle(color: Colors.black87,
                      fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Date',
                      style: TextStyle(color: Colors.black38),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  GridView buildGridView() {
    return GridView.count(
      padding: EdgeInsets.all(0.0),
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text(
            '24/11/2019',
            style: TextStyle(color: Colors.black87),
          ),
          subtitle: Text('Date'),
          dense: false,
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text(
            '24/11/2019',
            style: TextStyle(color: Colors.black87),
          ),
          subtitle: Text('Date'),
          dense: false,
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text(
            '24/11/2019',
            style: TextStyle(color: Colors.black87),
          ),
          subtitle: Text('Date'),
          dense: false,
        ),
      ],
    );
  }

  Column buildEventForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Christmas Countdown',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        Row(
          children: <Widget>[
            Container(
                child: Row(
              children: <Widget>[
                Icon(Icons.calendar_today),
                Column(
                  children: <Widget>[
                    Text(
                      '24/11/2019',
                      style: TextStyle(color: Colors.black87),
                    ),
                    Text('Date'),
                  ],
                )
              ],
            )),
          ],
        )
      ],
    );
  }
}

// class EventForm extends StatefulWidget {
//   @override
//   _EventFormState createState() => _EventFormState();
// }

// class _EventFormState extends State<EventForm> {
//   final _formKey = GlobalKey<FormState>();
//   final _event = Event();

//   void callDatePicker() async {
//     var order = await getDate();
//     setState(() {
//       if (order != null) {
//         this._event.schedule = order;
//       }
//     });
//   }

//   Future<DateTime> getDate() {
//     // Imagine that this function is
//     // more complex and slow.
//     return showDatePicker(
//       context: context,
//       initialDate: _event.schedule != null ? _event.schedule : DateTime.now(),
//       firstDate: DateTime.now().subtract(new Duration(days: 1)),
//       lastDate: DateTime(2021),
//       builder: (BuildContext context, Widget child) {
//         return Theme(data: ThemeData.light(), child: child);
//       },
//     );
//   }

//   void callTimePicker() async {
//     var order = await getTime();
//     setState(() {
//       this._event.time = order;
//     });
//   }

//   Future<TimeOfDay> getTime() {
//     // Imagine that this function is
//     // more complex and slow.
//     return showTimePicker(
//         context: context,
//         initialTime: _event.time != null
//             ? _event.time
//             : new TimeOfDay(hour: 00, minute: 00));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
//         child: Form(
//           key: _formKey,
//           child: Column(children: <Widget>[
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Event'),
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Please enter some text';
//                 }
//                 return null;
//               },
//               onSaved: (value) => _event.name = value,
//             ),
//             TextFormField(
//                 controller: TextEditingController(
//                     text: new DateFormat.yMMMd().format(_event.schedule)),
//                 decoration: InputDecoration(labelText: 'Schedule'),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return 'Please choose a date';
//                   }
//                   return null;
//                 },
//                 onTap: callDatePicker),
//             TextFormField(
//                 controller: TextEditingController(
//                     text: _event.time != null
//                         ? _event.time.format(context).toString()
//                         : new TimeOfDay(hour: 00, minute: 00)
//                             .format(context)
//                             .toString()),
//                 decoration: InputDecoration(labelText: 'Time'),
//                 onTap: callTimePicker),
//             RaisedButton(
//               onPressed: () {
//                 if (_formKey.currentState.validate()) {
//                   Scaffold.of(context)
//                       .showSnackBar(SnackBar(content: Text('Processing Data')));
//                   _event.save();
//                 }
//               },
//               child: Text('Start Countdown'),
//             )
//           ]),
//         ));
//   }
// }
