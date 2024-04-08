import 'package:flutter/material.dart';

import '../screens/Tab/Home/Mobile/main_mobile.dart';
import '../screens/Tab/Home/Desktop/main_desktop.dart';
import 'responsive_layout.dart';

class homePage_respone extends StatefulWidget {
  const homePage_respone({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<homePage_respone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: const main_mobile(),
        desktopBody: const main_desktop(),
      ),
    );
  }
}
