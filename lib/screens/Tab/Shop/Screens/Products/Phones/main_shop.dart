import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../../../Pages/App_Bar/Search/search.dart';
import 'Iphone_Products/Iphone_products.dart';
import 'Samung_Products/Samsung_Products.dart';
import 'Xiaomi_Products/Xiaomi_Products.dart';

class Phone_Products extends StatefulWidget {
  const Phone_Products({super.key});

  @override
  State<Phone_Products> createState() => _Main_ShopState();
}

class _Main_ShopState extends State<Phone_Products> {
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
        buildScreen_IphoneProduct_List(),
        buildScreen_SamsungProduct_List(),
        buildScreen_XiaomiProduct_List(),
      ],
    );
  }
}
