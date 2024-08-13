import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/myProviders/myProvider.dart';
import 'package:islamic_app/myThemeData.dart';
import 'package:islamic_app/screens/hadethDeteailedScreen.dart';
import 'package:islamic_app/model/hadethModel.dart';
import 'package:provider/provider.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethModel> ahadeths = [];
  List<String> hadethList = [
    "First Hadeth",
    "Second Hadeth",
    "Third Hadeth",
    "Fourth Hadeth",
    "Fifth Hadeth",
    "Sixth Hadeth",
    "Seventh Hadeth",
    "Eighth Hadeth",
    "Ninth Hadeth",
    "Tenth Hadeth",
    "Eleventh Hadeth",
    "Twelfth Hadeth",
    "Thirteenth Hadeth",
    "Fourteenth Hadeth",
    "Fifteenth Hadeth",
    "Sixteenth Hadeth",
    "Seventeenth Hadeth",
    "Eighteenth Hadeth",
    "Nineteenth Hadeth",
    "Twentieth Hadeth",
    "Twenty-First Hadeth",
    "Twenty-Second Hadeth",
    "Twenty-Third Hadeth",
    "Twenty-Fourth Hadeth",
    "Twenty-Fifth Hadeth",
    "Twenty-Sixth Hadeth",
    "Twenty-Seventh Hadeth",
    "Twenty-Eighth Hadeth",
    "Twenty-Ninth Hadeth",
    "Thirtieth Hadeth",
    "Thirty-First Hadeth",
    "Thirty-Second Hadeth",
    "Thirty-Third Hadeth",
    "Thirty-Fourth Hadeth",
    "Thirty-Fifth Hadeth",
    "Thirty-Sixth Hadeth",
    "Thirty-Seventh Hadeth",
    "Thirty-Eighth Hadeth",
    "Thirty-Ninth Hadeth",
    "Fortieth Hadeth",
    "Forty-First Hadeth",
    "Forty-Second Hadeth",
    "Forty-Third Hadeth",
    "Forty-Fourth Hadeth",
    "Forty-Fifth Hadeth",
    "Forty-Sixth Hadeth",
    "Forty-Seventh Hadeth",
    "Forty-Eighth Hadeth",
    "Forty-Ninth Hadeth",
    "Fiftieth Hadeth"
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    if (ahadeths.isEmpty) {
      loadhadeths();
    }
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_logo.png"),
          Table(
            border: TableBorder(
                top: BorderSide(
                  width: 3,
                  color: provider.isDark
                      ? MyThemeData.DarkprimaryColor
                      : MyThemeData.primaryColor,
                ),
                bottom: BorderSide(
                  width: 3,
                  color: provider.isDark
                      ? MyThemeData.DarkprimaryColor
                      : MyThemeData.primaryColor,
                ),
                verticalInside: BorderSide(
                  width: 3,
                  color: provider.isDark
                      ? MyThemeData.DarkprimaryColor
                      : MyThemeData.primaryColor,
                )),
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "ahadeth".tr(),
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ],
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  color: provider.isDark
                      ? MyThemeData.DarkprimaryColor
                      : MyThemeData.primaryColor,
                  indent: 50,
                  endIndent: 50,
                );
              },
              itemCount: ahadeths.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, HadethDeteailedScreen.RouteName,
                        arguments: ahadeths[index]);
                  },
                  child: Table(
                    // border: TableBorder.symmetric(
                    //   inside: BorderSide(
                    //     color: MyThemeData.DarkprimaryColor,
                    //     width: 3,
                    //   ),
                    // ),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              provider.isEnglish
                                  ? hadethList[index]
                                  : ahadeths[index].title,
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Future<void> loadhadeths() async {
    await rootBundle.loadString("assets/ahadeth.txt").then((hadethFile) {
      List<String> hadeths = hadethFile.split("#");
      print(hadeths.length);

      for (int i = 0; i < hadeths.length; i++) {
        String hadeth = hadeths[i];
        List<String> hadethLines = hadeth.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        ahadeths.add(HadethModel(HadethContenr: hadethLines, title: title));
      }
    });
    setState(() {});
  }
}
