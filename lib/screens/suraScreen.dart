import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/model/suraModel.dart';
import 'package:islamic_app/myProviders/myProvider.dart';
import 'package:islamic_app/myThemeData.dart';
import 'package:provider/provider.dart';

class SureScreen extends StatefulWidget {
  static const String RouteName = "SuraScreenRoute";

  SureScreen({super.key});

  @override
  State<SureScreen> createState() => _SureScreenState();
}

class _SureScreenState extends State<SureScreen> {
  List<String> lines = [];
  SuraModel? sura;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    sura = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (lines.isEmpty) {
      loadSura(sura!.index);
    }
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
        )),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: provider.isDark
                      ? MyThemeData.DarkSecprimaryColor.withOpacity(.8)
                      : Colors.white.withOpacity(.8),
                  borderRadius: BorderRadius.circular(25)),
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 0.86,
              child: Column(
                children: [
                  Text("سورة ${sura!.SuraName}",
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
                      itemCount: lines.length,
                      itemBuilder: (context, index) {
                        return Text(
                          textAlign: TextAlign.center,
                          "${lines[index]}",
                          style: Theme.of(context).textTheme.bodyMedium,
                        );
                      },
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Future<void> loadSura(index) async {
    String SuraBody =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    lines = SuraBody.split("\n");
    setState(() {});
    print(lines);
  }
}
