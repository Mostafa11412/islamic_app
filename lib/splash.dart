import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/myProviders/myProvider.dart';
import 'package:islamic_app/screens/homeScreen.dart';
import 'package:provider/provider.dart';

class splash extends StatelessWidget {
  static const String RouteName = "SplashRoute";
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(children: [
      Image.asset(
        provider.isDark ? "assets/images/bg.png" : "assets/images/bg2.png",
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      FlutterSplashScreen(
        duration: Duration(seconds: 2),
        nextScreen: Homescreen(),
        backgroundColor: Colors.transparent,
        splashScreenBody: Container(
          color: Colors.transparent,
          child: Center(
            child: Column(
              children: [
                Spacer(
                  flex: 3,
                ),
                provider.isDark
                    ? Image.asset("assets/images/logo.png")
                    : Image.asset("assets/images/logo2.png"),
                Spacer(
                  flex: 2,
                ),
                provider.isDark
                    ? Image.asset(
                        "assets/images/Group 7.png",
                        fit: BoxFit.fitWidth,
                        height: 120,
                        width: 200,
                      )
                    : Image.asset(
                        "assets/images/Group 7 L.png",
                        fit: BoxFit.fitWidth,
                        height: 120,
                        width: 200,
                      ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
