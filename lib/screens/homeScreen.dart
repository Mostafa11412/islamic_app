import 'package:flutter/material.dart';
import 'package:islamic_app/screens/hadethScreen.dart';
import 'package:islamic_app/screens/quranScreen.dart';
import 'package:islamic_app/screens/radioScreen.dart';
import 'package:islamic_app/screens/tasbehScreen.dart';

class Homescreen extends StatefulWidget {
  static const String RouteName = "HomeScreenRoute";

  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int index = 3;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/default_bg.png",
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('إسلامي'),
        ),
        body: Tabs[index],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                label: "الراديو",
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/icon_radio.png",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "التسبيح",
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/icon_sebha.png",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "الحديث",
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/icon_hadeth.png",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "القران",
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/icon_quran.png",
                  ),
                ),
              ),
            ]),
      ),
    ]);
  }

  List<Widget> Tabs = [
    Radioscreen(),
    TasbehScreen(),
    HadethScreen(),
    Quranscreen()
  ];
}
