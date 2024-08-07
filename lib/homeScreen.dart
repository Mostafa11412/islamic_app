import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/hadethScreen.dart';
import 'package:islamic_app/quranScreen.dart';
import 'package:islamic_app/radioScreen.dart';
import 'package:islamic_app/tasbehScreen.dart';

class Homescreen extends StatefulWidget {
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
          backgroundColor: Colors.transparent,
          title: Text('إسلامي',
              style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF242424))),
          centerTitle: true,
        ),
        body: Tabs[index],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xFFB7935F),
            currentIndex: index,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            selectedItemColor: Color(0xFF242424),
            unselectedItemColor: Color(0xFFF8F8F8),
            iconSize: 50,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            selectedLabelStyle: GoogleFonts.inter(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
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
