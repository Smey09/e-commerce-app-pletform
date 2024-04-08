import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../Pages/App_Bar/Search/search.dart';
import 'Macbook_Products/macbook_products.dart';

class Laptop_Products extends StatefulWidget {
  const Laptop_Products({super.key});

  @override
  State<Laptop_Products> createState() => _Main_ShopState();
}

class _Main_ShopState extends State<Laptop_Products> {
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
        buildScreen_Laptop_Macbook_Product_List(),
      ],
    );
  }
}
