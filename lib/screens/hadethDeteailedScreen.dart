import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islamic_app/model/hadethModel.dart';

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
    hadeth = ModalRoute.of(context)!.settings.arguments as HadethModel?;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/default_bg.png",
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'إسلامي',
          ),
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(25)),
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 0.86,
              child: Column(
                children: [
                  Text(hadeth!.title,
                      style: Theme.of(context).textTheme.bodyLarge),
                  Divider(
                    thickness: 1,
                    color: Color(0xFFB7935F),
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
                            style: Theme.of(context).textTheme.bodyLarge);
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
