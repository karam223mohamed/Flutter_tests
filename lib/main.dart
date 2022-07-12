import 'package:flutter/material.dart';
import 'package:test_1/home_screen.dart';
import 'package:test_1/login_screen.dart';
import 'package:test_1/messenger_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MessengerScreen(),
    );
  }
}


