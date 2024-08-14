import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/myProviders/myProvider.dart';
import 'package:islamic_app/screens/hadethScreen.dart';
import 'package:islamic_app/screens/quranScreen.dart';
import 'package:islamic_app/screens/radioScreen.dart';
import 'package:islamic_app/screens/tasbehScreen.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  static const String RouteName = "HomeScreenRoute";

  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // bool isDark = false;
  // bool isEnglish = false;

  int index = 0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Stack(children: [
      Image.asset(
        provider.bg_path,
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leadingWidth: 100,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(provider.isEnglish ? "EN" : "AR"),
              Transform.scale(
                scale: .8,
                child: Switch(
                    value: provider.isEnglish,
                    activeColor: provider.isDark ? Colors.white : Colors.black,
                    onChanged: (value) {
             
                        provider.isEnglish
                            ? context.setLocale(Locale('ar'))
                            : context.setLocale(Locale('en'));

                        provider.changeLanguage(value);
                
                    }),
              )
            ],
          ),
          title: Text("appName".tr()),
          actions: [
            Icon(Icons.dark_mode_outlined),
            Transform.scale(
              scale: .8,
              child: Switch(
                  value: provider.isDark,
                  activeColor: provider.isDark ? Colors.white : Colors.black,
                  onChanged: (value) {
   
                      provider.changeTheme(value);
                 
                  }),
            )
          ],
        ),
        body: Tabs[index],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
       
            },
            items: [
              BottomNavigationBarItem(
                label: "quran".tr(),
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/icon_quran.png",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "hadeth".tr(),
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/icon_hadeth.png",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "sebha".tr(),
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/icon_sebha.png",
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "radio".tr(),
                icon: ImageIcon(
                  AssetImage(
                    "assets/images/icon_radio.png",
                  ),
                ),
              ),
            ]),
      ),
    ]);
  }

  List<Widget> Tabs = [
    Quranscreen(),
    HadethScreen(),
    TasbehScreen(),
    Radioscreen(),
  ];
}
