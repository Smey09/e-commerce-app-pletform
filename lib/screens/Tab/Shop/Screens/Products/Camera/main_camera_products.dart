import 'package:flutter/material.dart';

class main_camera_products extends StatefulWidget {
  const main_camera_products({super.key});

  @override
  State<main_camera_products> createState() => _main_camera_productsState();
}

class _main_camera_productsState extends State<main_camera_products> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Camera"),
      ),
    );
  }
}
