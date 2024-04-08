import 'package:flutter/material.dart';

class main_desktop_products extends StatefulWidget {
  const main_desktop_products({super.key});

  @override
  State<main_desktop_products> createState() => _main_camera_productsState();
}

class _main_camera_productsState extends State<main_desktop_products> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("desktop_products"),
      ),
    );
  }
}
