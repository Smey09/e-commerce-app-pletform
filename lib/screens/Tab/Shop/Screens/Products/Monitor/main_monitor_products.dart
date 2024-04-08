import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../Pages/App_Bar/Search/search.dart';
import 'Asus_monitor/asus_monitor.dart';

class Monitor_Products extends StatefulWidget {
  const Monitor_Products({super.key});

  @override
  State<Monitor_Products> createState() => _Main_ShopState();
}

class _Main_ShopState extends State<Monitor_Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildMainListView(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Search_screen()),
          );
          print("Click On button Search!");
        },
        child: const Icon(Icons.search),
      ),
    );
  }

  Widget _buildMainListView(context) {
    return ListView(
      children: const [
        buildScreen_Asus_Monitor_Product_List(),
      ],
    );
  }
}
