import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../Pages/App_Bar/Search/search.dart';
import 'Apple_Watch/apple_watch.dart';

class main_Watch_Products extends StatefulWidget {
  const main_Watch_Products({super.key});

  @override
  State<main_Watch_Products> createState() => _Main_ShopState();
}

class _Main_ShopState extends State<main_Watch_Products> {
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
        buildScreen_Apple_Watch_Product_List(),
      ],
    );
  }
}
