import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/myProviders/myProvider.dart';

import 'package:islamic_app/myThemeData.dart';
import 'package:islamic_app/screens/hadethDeteailedScreen.dart';
import 'package:islamic_app/splash.dart';
import 'package:islamic_app/screens/homeScreen.dart';
import 'package:islamic_app/screens/suraScreen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: ChangeNotifierProvider(
        create: (context) => MyProvider(), child: MyApp()),
    supportedLocales: [Locale('en'), Locale('ar')],
    startLocale: Locale('ar'),
    path: "assets/lang",
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      initialRoute: splash.RouteName,
      themeMode: provider.isDark ? ThemeMode.dark : ThemeMode.light,
      darkTheme: MyThemeData.DarkTheme,
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
