import 'package:flutter/material.dart';

import '../../Shop/Screens/Products/Laptop/main_laptop_products.dart';
import '../Main/appBar_screen.dart';

class laptop_OnPress extends StatefulWidget {
  const laptop_OnPress({super.key});

  @override
  State<laptop_OnPress> createState() => _laptop_OnPressState();
}

class _laptop_OnPressState extends State<laptop_OnPress> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appBar_Screen(context),
          body: const Laptop_Products(),
        )
      ],
    );
  }
}
