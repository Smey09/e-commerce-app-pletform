
import 'package:flutter/material.dart';
import '../../../../responsive/homePage_respone.dart';
import 'appBar_screen.dart';
import 'drawing_screen.dart';

class Main_page extends StatefulWidget {
  const Main_page({super.key});

  @override
  State<Main_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Main_page> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appBar_Screen(context),
          drawer: const Drawing_srceen(),
          body: const homePage_respone(),
        )
      ],
    );
  }
}
