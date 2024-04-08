import '/Log/login_screen.dart';
import 'package:flutter/material.dart';

class main_screen extends StatelessWidget {
  const main_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_screen(),
    );
  }
}
