import 'package:flutter/material.dart';

class main_tablet_products extends StatefulWidget {
  const main_tablet_products({super.key});

  @override
  State<main_tablet_products> createState() => _main_camera_productsState();
}

class _main_camera_productsState extends State<main_tablet_products> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("tablet_products"),
      ),
    );
  }
}
