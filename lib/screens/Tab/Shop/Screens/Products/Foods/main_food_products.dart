import 'package:flutter/material.dart';

class main_foods_products extends StatefulWidget {
  const main_foods_products({super.key});

  @override
  State<main_foods_products> createState() => _main_camera_productsState();
}

class _main_camera_productsState extends State<main_foods_products> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("foods_products"),
      ),
    );
  }
}
