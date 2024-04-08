import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../Chat/main_chat.dart';
import '../../Delivery/main_delivery.dart';
import '../../Shop/TabBar/Shop_TabBar_shop.dart';
import 'desktop_body.dart';

class main_desktop extends StatefulWidget {
  const main_desktop({super.key});

  @override
  State<main_desktop> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<main_desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: const [
        MyDesktopBody(),
        MainShop_screen(),
        main_chat(),
        main_delivery(),
      ],
    );
  }

  int _currentIndex = 0;

  Widget _buildBottom() {
    return CurvedNavigationBar(
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      animationDuration: const Duration(milliseconds: 300),
      items: const [
        Icon(Icons.home),
        Icon(Icons.shopping_cart_outlined),
        Icon(Icons.chat),
        Icon(Icons.electric_moped_sharp),
      ],
    );
  }
}
