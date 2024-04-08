import 'package:flutter/material.dart';

import '../../Shop/Screens/Products/Monitor/main_monitor_products.dart';
import '../Main/appBar_screen.dart';

class monitor_OnPress extends StatefulWidget {
  const monitor_OnPress({super.key});

  @override
  State<monitor_OnPress> createState() => _laptop_OnPressState();
}

class _laptop_OnPressState extends State<monitor_OnPress> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appBar_Screen(context),
          body: const Monitor_Products(),
        )
      ],
    );
  }
}
