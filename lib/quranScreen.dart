import 'package:flutter/material.dart';

class Quranscreen extends StatefulWidget {
  const Quranscreen({super.key});

  @override
  State<Quranscreen> createState() => _QuranscreenState();
}

class _QuranscreenState extends State<Quranscreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/qur2an_screen_logo.png"),
          Row(
            children: [ 
              Expanded(
                child: Column(
                  children: [Text("data"), Text("data"), Text("data")],
                ),
              ),
              Expanded(
                child: Column(
                  children: [Text("data"), Text("data"), Text("data")],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
