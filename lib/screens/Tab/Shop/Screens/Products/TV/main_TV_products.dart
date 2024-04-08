import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../Pages/App_Bar/Search/search.dart';
import 'LG_TV/lg_tv.dart';
import 'Samsung_TV/samsung_TV.dart';

class main_TV_Products extends StatefulWidget {
  const main_TV_Products({super.key});

  @override
  State<main_TV_Products> createState() => _Main_ShopState();
}

class _Main_ShopState extends State<main_TV_Products> {
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
        buildScreen_Samsung_TV_Product_List(),
        buildScreen_LG_TV_Product_List(),
      ],
    );
  }
}
