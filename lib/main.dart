import 'package:flutter/material.dart';
import 'package:islamic_app/myThemeData.dart';
import 'package:islamic_app/screens/hadethDeteailedScreen.dart';
import 'package:islamic_app/splash.dart';
import 'package:islamic_app/screens/homeScreen.dart';
import 'package:islamic_app/screens/suraScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.RouteName,
      theme: MyThemeData.LightTHeme,
      
      routes: {
        splash.RouteName: (context) => splash(),
        Homescreen.RouteName: (context) => Homescreen(),
        SureScreen.RouteName: (context) => SureScreen(),
        HadethDeteailedScreen.RouteName: (context) => HadethDeteailedScreen(),
      }, 
    );
  }
}
