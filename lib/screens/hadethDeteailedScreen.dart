import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/model/hadethModel.dart';
import 'package:islamic_app/myProviders/myProvider.dart';
import 'package:islamic_app/myThemeData.dart';
import 'package:provider/provider.dart';

class HadethDeteailedScreen extends StatefulWidget {
  static const String RouteName = "HadethDeteailedScreenRoute";

  HadethDeteailedScreen({super.key});

  @override
  State<HadethDeteailedScreen> createState() => _HadethDeteailedScreenState();
}

class _HadethDeteailedScreenState extends State<HadethDeteailedScreen> {
  HadethModel? hadeth;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    hadeth = ModalRoute.of(context)!.settings.arguments as HadethModel?;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                provider.bg_path,
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "appName".tr(),
          ),
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: provider.isDark
                      ? MyThemeData.DarkSecprimaryColor.withOpacity(.8)
                      : Colors.white.withOpacity(.8)),
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 0.86,
              child: Column(
                children: [
                  Text(hadeth!.title,
                      style: Theme.of(context).textTheme.bodyMedium),
                  Divider(
                    thickness: 1,
                    color: provider.isDark
                        ? MyThemeData.DarkprimaryColor
                        : MyThemeData.primaryColor,
                    endIndent: 42,
                    indent: 42,
                  ),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20,
                      ),
                      itemCount: hadeth!.HadethContenr.length,
                      itemBuilder: (context, index) {
                        return Text(
                            textAlign: TextAlign.center,
                            hadeth!.HadethContenr[index],
                            style: Theme.of(context).textTheme.bodyMedium);
                      },
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
