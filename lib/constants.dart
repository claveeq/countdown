import 'package:flutter/material.dart';

const kGreetingsTextStyle = TextStyle(
  fontSize: 40.0,
  color: Colors.white,
);

const kNameTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

var kSearchInputDecoration = InputDecoration(
  fillColor: Color(0xFF2B48C2),
  filled: true,
  hintText: 'Search',
  hintStyle: TextStyle(color: Colors.white54),
  contentPadding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
  enabledBorder: kOutlineInputBorder,
  focusedBorder: kOutlineInputBorder,
  suffixIcon: Icon(Icons.search, color: Colors.white54),
);

const kOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xFF2B48C2)),
  borderRadius: BorderRadius.all(Radius.circular(30.0)),
);

const kContentHeaderTextStyle = TextStyle(
  color: Colors.black54,
  fontSize: 25.0,
  fontWeight: FontWeight.w700,
);

const kBackgroundColor = Color(0xFF4263EC);
const kPrimayColor = Color(0xFFF2A85B);
const kAccentColor = Color(0xFFF97F51);

// 0xFFF5C4AA - yellowish orange
// 0xFF4263EC - darkblue
// 0xFFF2A85B - orange
// 0xFFFDF0E5 - light orange
// 0xFFF97F51 - Dark Orange
