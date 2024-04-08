import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class main_delivery extends StatefulWidget {
  const main_delivery({super.key});

  @override
  State<main_delivery> createState() => _main_profileState();
}

class _main_profileState extends State<main_delivery> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Delivery",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 100,
                  fontWeight: FontWeight.w600,
                )),
            Icon(
              Icons.electric_moped_sharp,
              color: Colors.blue,
              size: 300,
            ),
          ],
        ),
      ),
    );
  }
}
