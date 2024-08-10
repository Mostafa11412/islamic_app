import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/myThemeData.dart';

class TasbehScreen extends StatefulWidget {
  const TasbehScreen({super.key});

  @override
  State<TasbehScreen> createState() => _TasbehScreenState();
}

class _TasbehScreenState extends State<TasbehScreen> {
  static int counter = 0;
  static int index = 0;
  List<String> sebhaItems = ["سبحان الله", "الحمدلله", "الله اكبر"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: InkWell(
              onTap: () {
                counter++;
                if (counter == 33) {
                  counter = 0;
                  index == 2 ? index = 0 : index++;
                }
                setState(() {});
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * .15),
                    child: Image.asset(
                        fit: BoxFit.cover, "assets/images/head_sebha_logo.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .095),
                    child: Transform.rotate(
                      angle: -63.65,
                      child: Image.asset(
                          fit: BoxFit.fill,
                          "assets/images/body_sebha_logo.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * .1),
            child: Text(
              "عدد التسبيحات",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * .08),
            width: 70,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: MyThemeData.primaryColor,
            ),
            child: Center(
              child: Text(
                counter.toString(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * .07),
            child: Container(
                width: 137,
                height: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: MyThemeData.primaryColor,
                ),
                child: Center(
                  child: Text(
                    sebhaItems[index],
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
