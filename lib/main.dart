import 'package:flutter/material.dart';
import 'package:islamic_app/splash.dart';
import 'package:islamic_app/homeScreen.dart';
import 'package:islamic_app/suraScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
      routes: {
        Homescreen.RouteName: (context) => Homescreen(),
        SureScreen.RouteName: (context) => SureScreen()
      },
    );
  }
}
