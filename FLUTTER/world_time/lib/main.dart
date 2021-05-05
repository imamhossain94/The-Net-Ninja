import 'package:flutter/material.dart';
import 'pages/choose_location.dart';
import 'pages/home.dart';
import 'pages/loading.dart';

void main() => runApp(MaterialApp(
  //home: Home(),
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));






