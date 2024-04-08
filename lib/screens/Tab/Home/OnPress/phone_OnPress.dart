import 'package:flutter/material.dart';

import '../../Shop/Screens/Products/Phones/main_shop.dart';
import '../Main/appBar_screen.dart';

class phone_OnPress extends StatefulWidget {
  const phone_OnPress({super.key});

  @override
  State<phone_OnPress> createState() => _phone_OnPressState();
}

class _phone_OnPressState extends State<phone_OnPress> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appBar_Screen(context),
          body: const Phone_Products(),
        )
      ],
    );
  }
}
