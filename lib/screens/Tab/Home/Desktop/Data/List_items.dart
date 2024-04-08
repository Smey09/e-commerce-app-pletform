import 'package:flutter/material.dart';

import '../../../Shop/Screens/Products/Camera/main_camera_products.dart';
import '../../../Shop/Screens/Products/Desktop/main_desktop_products.dart';
import '../../../Shop/Screens/Products/Foods/main_food_products.dart';
import '../../../Shop/Screens/Products/Laptop/main_laptop_products.dart';
import '../../../Shop/Screens/Products/Monitor/main_monitor_products.dart';
import '../../../Shop/Screens/Products/Phones/main_shop.dart';
import '../../../Shop/Screens/Products/TV/main_TV_products.dart';
import '../../../Shop/Screens/Products/Tablet/main_tablet_products.dart';
import '../../../Shop/Screens/Products/Watch/main_Watch_products.dart';

class ListItem {
  final IconData icon;
  final String text;
  final Widget page;

  const ListItem(
    this.icon,
    this.text,
    this.page,
  );
}

List<ListItem> items = [
  const ListItem(
    Icons.phone_iphone,
    "Phone",
    Phone_Products(),
  ),
  const ListItem(
    Icons.laptop_mac,
    "Laptop",
    Laptop_Products(),
  ),
  const ListItem(
    Icons.monitor,
    "Monitor",
    Monitor_Products(),
  ),
  const ListItem(
    Icons.tv,
    "TV",
    main_TV_Products(),
  ),
  const ListItem(
    Icons.watch,
    "Watch",
    main_Watch_Products(),
  ),
  const ListItem(
    Icons.camera_alt,
    "Camera",
    main_camera_products(),
  ),
  const ListItem(
    Icons.tablet_rounded,
    "Tablet",
    main_tablet_products(),
  ),
  const ListItem(
    Icons.desktop_windows_rounded,
    "Desktop",
    main_desktop_products(),
  ),
  const ListItem(
    Icons.food_bank,
    "Foods",
    main_foods_products(),
  ),
];
