import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/screens/hadethDeteailedScreen.dart';
import 'package:islamic_app/model/hadethModel.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadethModel> ahadeths = [];

  @override
  Widget build(BuildContext context) {
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
                  color: Color(0xFFB7935F),
                ),
                bottom: BorderSide(
                  width: 3,
                  color: Color(0xFFB7935F),
                ),
                verticalInside: BorderSide(
                  width: 3,
                  color: Color(0xFFB7935F),
                )),
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "الأحاديث",
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
                  color: Color(0xFFB7935F),
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
                    border: TableBorder.symmetric(
                      inside: BorderSide(
                        color: Color(0xFFB7935F),
                        width: 3,
                      ),
                    ),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              ahadeths[index].title,
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
