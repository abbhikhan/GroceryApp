// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: 'Type Here',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffB0DF8C), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffB0DF8C), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const KTextColor = Color(0xff82CD47);
const kTbalck = Colors.black;

const knavcolor = Color.fromARGB(255, 97, 201, 191);
