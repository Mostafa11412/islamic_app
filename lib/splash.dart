import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/screens/homeScreen.dart';

class splash extends StatelessWidget {
  static const String RouteName = "SplashRoute";
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
      duration: Duration(seconds: 2),
      nextScreen: Homescreen(),
      backgroundColor: Colors.white,
      splashScreenBody: Container(
        color: Color(0xFFFFFFFF),
        child: Center(
          child: Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Image.asset("assets/images/logo2.png"),
              Spacer(
                flex: 2,
              ),
              Image.asset(
                "assets/images/routegold.png",
                fit: BoxFit.fitWidth,
                height: 80,
                width: 160,
              ),
              Text(
                "Supervised by Mohamed NabiL",
                style: TextStyle(
                  color: Color(0xFFB7935F),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
