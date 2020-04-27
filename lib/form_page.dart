import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'models/event.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EventForm(),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4.0,
        backgroundColor: Colors.black,
        icon: const Icon(Icons.close),
        label: const Text('Back'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class EventForm extends StatefulWidget {
  EventForm({Key key}) : super(key: key);

  @override
  _EventFormState createState() => _EventFormState();
}

class _EventFormState extends State<EventForm> {
  final _formKey = GlobalKey<FormState>();
  final _event = Event();

  void callDatePicker() async {
    var order = await getDate();
    setState(() {
      if (order != null) {
        this._event.schedule = order ;
      }
    });
  }

  Future<DateTime> getDate() {
    // Imagine that this function is
    // more complex and slow.
    return showDatePicker(
      context: context,
      initialDate: _event.schedule != null ? _event.schedule : DateTime.now(),
      firstDate: DateTime.now().subtract(new Duration(days: 1)),
      lastDate: DateTime(2021),
      builder: (BuildContext context, Widget child) {
        return Theme(data: ThemeData.light(), child: child);
      },
    );
  }

  void callTimePicker() async {
    var order = await getTime();
    setState(() {
      this._event.time = order;
    });
  }

  Future<TimeOfDay> getTime() {
    // Imagine that this function is
    // more complex and slow.
    return showTimePicker(
        context: context,
        initialTime: _event.time != null
            ? _event.time
            : new TimeOfDay(hour: 00, minute: 00));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
        child: Form(
          key: _formKey,
          child: Column(children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Event'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (value) => _event.name = value,
            ),
            TextFormField(
                controller: TextEditingController(
                    text: new DateFormat.yMMMd().format(_event.schedule)),
                decoration: InputDecoration(labelText: 'Schedule'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please choose a date';
                  }
                  return null;
                },
                onTap: callDatePicker),
            TextFormField(
                controller: TextEditingController(
                    text: _event.time != null
                        ? _event.time.format(context).toString()
                        : new TimeOfDay(hour: 00, minute: 00)
                            .format(context)
                            .toString()),
                decoration: InputDecoration(labelText: 'Time'),
                onTap: callTimePicker),
            RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                  _event.save();
                }
              },
              child: Text('Submit'),
            )
          ]),
        ));
  }
}
