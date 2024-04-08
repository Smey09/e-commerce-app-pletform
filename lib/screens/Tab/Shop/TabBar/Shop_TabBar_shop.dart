import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import '../Screens/Products/Camera/main_camera_products.dart';
import '../Screens/Products/Desktop/main_desktop_products.dart';
import '../Screens/Products/Foods/main_food_products.dart';
import '../Screens/Products/Laptop/main_laptop_products.dart';
import '../Screens/Products/Monitor/main_monitor_products.dart';
import '../Screens/Products/Phones/main_shop.dart';
import '../Screens/Products/TV/main_TV_products.dart';
import '../Screens/Products/Tablet/main_tablet_products.dart';
import '../Screens/Products/Watch/main_Watch_products.dart';

class MainShop_screen extends StatefulWidget {
  const MainShop_screen({super.key});

  @override
  State<MainShop_screen> createState() => _Shop_TabBarState();
}

class _Shop_TabBarState extends State<MainShop_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 9,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: Colors.orange,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                tabs: const [
                  Tab(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.blue,
                      size: 20,
                    ),
                    text: "Phone",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.laptop,
                      color: Colors.blue,
                      size: 20,
                    ),
                    text: "Laptop",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.monitor,
                      color: Colors.blue,
                      size: 20,
                    ),
                    text: "Monitor",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.tv,
                      color: Colors.blue,
                      size: 20,
                    ),
                    text: "TV",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.watch,
                      color: Colors.blue,
                      size: 20,
                    ),
                    text: "Watch",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.blue,
                      size: 20,
                    ),
                    text: "Camera",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.tablet_rounded,
                      color: Colors.blue,
                      size: 20,
                    ),
                    text: "Tablet",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.desktop_windows_rounded,
                      color: Colors.blue,
                      size: 20,
                    ),
                    text: "Desktop",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.food_bank,
                      color: Colors.blue,
                      size: 20,
                    ),
                    text: "Foods",
                  ),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Phone_Products(),
                    Laptop_Products(),
                    Monitor_Products(),
                    main_TV_Products(),
                    main_Watch_Products(),
                    main_camera_products(),
                    main_tablet_products(),
                    main_desktop_products(),
                    main_foods_products(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
