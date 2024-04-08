import 'package:flutter/material.dart';

import '../../../../themes/color_bg/background_color.dart';
import '../../../Pages/App_Bar/Setting/settingPage.dart';

AppBar appBar_Screen(context) {
  return AppBar(
    backgroundColor: ColorAsset.colorsAppbar,
    title: const Text(
      "F L U T T E R  D E M O",
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.w600,
        fontSize: 22,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {
          print("Press on the icon button settings");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => settingPage()),
          );
        },
        icon: const Icon(Icons.settings),
        color: Colors.white,
        iconSize: 25,
      ),
      IconButton(
        onPressed: () {
          print("No functions Dark mode");
        },
        icon: const Icon(Icons.dark_mode),
        color: Colors.white,
        iconSize: 25,
      ),
    ],
  );
}
