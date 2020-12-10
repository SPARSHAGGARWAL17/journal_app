import 'package:flutter/material.dart';
import 'package:journal_app/export.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(
          headline1: TextStyle(
            color: kPrimaryColor,
            fontSize: 25,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      color: kPrimaryColor,
      routes: {
        WelcomePage.Route: (context) => WelcomePage(),
      },
      initialRoute: WelcomePage.Route,
    );
  }
}
