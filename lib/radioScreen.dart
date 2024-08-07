import 'package:flutter/material.dart';

class Radioscreen extends StatefulWidget {
  const Radioscreen({super.key});

  @override
  State<Radioscreen> createState() => _RadioscreenState();
}

class _RadioscreenState extends State<Radioscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Radio"),
      ),
    );
  }
}
