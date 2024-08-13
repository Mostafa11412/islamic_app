import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/myProviders/myProvider.dart';
import 'package:islamic_app/myThemeData.dart';
import 'package:provider/provider.dart';

class Radioscreen extends StatefulWidget {
  const Radioscreen({super.key});

  @override
  State<Radioscreen> createState() => _RadioscreenState();
}

class _RadioscreenState extends State<Radioscreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Center(
        child: Column(
      children: [
        Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .2),
            width: 412,
            height: 222,
            child: Image.asset("assets/images/radio_image.png")),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .07),
          child: Text(
            "radioo".tr(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                provider.isEnglish ? Icons.skip_previous : Icons.skip_next,
                size: 40,
                color: provider.isDark
                    ? MyThemeData.DarkprimaryColor
                    : MyThemeData.primaryColor,
              ),
              Icon(
                Icons.play_arrow,
                size: 50,
                color: provider.isDark
                    ? MyThemeData.DarkprimaryColor
                    : MyThemeData.primaryColor,
              ),
              Icon(
                provider.isEnglish ? Icons.skip_next : Icons.skip_previous,
                size: 40,
                color: provider.isDark
                    ? MyThemeData.DarkprimaryColor
                    : MyThemeData.primaryColor,
              )
            ],
          ),
        ),
      ],
    ));
  }
}
