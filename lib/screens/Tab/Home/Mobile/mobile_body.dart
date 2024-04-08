import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Pages/App_Bar/Search/search.dart';
import '../../Shop/Screens/Products/Camera/main_camera_products.dart';
import '../../Shop/Screens/Products/Desktop/main_desktop_products.dart';
import '../../Shop/Screens/Products/Foods/main_food_products.dart';
import '../../Shop/Screens/Products/Monitor/main_monitor_products.dart';

import '../../Shop/Screens/Products/TV/main_TV_products.dart';
import '../../Shop/Screens/Products/Tablet/main_tablet_products.dart';
import '../../Shop/Screens/Products/Watch/main_Watch_products.dart';
import '../OnPress/laptop_OnPress.dart';
import '../OnPress/phone_OnPress.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({super.key});

  @override
  State<MyMobileBody> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyMobileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 7.0, left: 25.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Smey!",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Welcome to my ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Application",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Search_screen(),
                          ),
                        );
                        print('Click On button Search!');
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
                child: ImageSlideshow(
                  indicatorColor: Colors.blue,
                  onPageChanged: (value) {
                    // debugPrint('Page changed: $value');
                  },
                  autoPlayInterval: 2000,
                  isLoop: true,
                  children: imagePaths.map((path) {
                    return ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      child: Image.asset(
                        path,
                        width: 450,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    );
                  }).toList(),
                  // children: [
                  //   ClipRRect(
                  //     borderRadius: const BorderRadius.all(
                  //       Radius.circular(10.0),
                  //     ),
                  //     child: Image.asset(
                  //         'assets/images/home/Slider/ecommerce_image.jpg',
                  //         width: 450,
                  //         height: 150,
                  //         fit: BoxFit.fill),
                  //   ),
                  //   ClipRRect(
                  //     borderRadius: const BorderRadius.all(
                  //       Radius.circular(10.0),
                  //     ),
                  //     child: Image.asset(
                  //       'assets/images/home/Slider/Poster_macbook.png',
                  //       width: 450,
                  //       height: 150,
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  //   ClipRRect(
                  //     borderRadius: const BorderRadius.all(
                  //       Radius.circular(10.0),
                  //     ),
                  //     child: Image.asset(
                  //       'assets/images/home/Slider/Poster_Phone.png',
                  //       width: 450,
                  //       height: 150,
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  //   ClipRRect(
                  //     borderRadius: const BorderRadius.all(
                  //       Radius.circular(10.0),
                  //     ),
                  //     child: Image.asset(
                  //       'assets/images/home/Slider/Poster_watch.png',
                  //       width: 450,
                  //       height: 150,
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  //   ClipRRect(
                  //     borderRadius: const BorderRadius.all(
                  //       Radius.circular(10.0),
                  //     ),
                  //     child: Image.asset(
                  //       'assets/images/home/Slider/Poster_Monitor.png',
                  //       width: 450,
                  //       height: 150,
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  //   ClipRRect(
                  //     borderRadius: const BorderRadius.all(
                  //       Radius.circular(10.0),
                  //     ),
                  //     child: Image.asset(
                  //       'assets/images/home/Slider/Poster_TV.png',
                  //       width: 450,
                  //       height: 150,
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  //   ClipRRect(
                  //     borderRadius: const BorderRadius.all(
                  //       Radius.circular(10.0),
                  //     ),
                  //     child: Image.asset(
                  //       'assets/images/home/Slider/Poster_Discount.png',
                  //       width: 450,
                  //       height: 150,
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 2.0, left: 10.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Category",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 59, 0, 251),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const phone_OnPress(),
                              ),
                            );
                            print("Smartphone...!");
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    1.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone_iphone,
                                  color: Color.fromARGB(255, 5, 105, 186),
                                  size: 55,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Phone",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Row 2................................................................
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const laptop_OnPress(),
                              ),
                            );
                            print("Laptop...!");
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    1.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.laptop_mac,
                                  color: Color.fromARGB(255, 5, 105, 186),
                                  size: 55,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Laptop",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Row 3................................................................
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Monitor_Products(),
                              ),
                            );
                            print("Monitor...!");
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    1.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.monitor,
                                  color: Color.fromARGB(255, 5, 105, 186),
                                  size: 55,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Monitor",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Column 2
//................................................................
                  //Column 2
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const main_TV_Products(),
                              ),
                            );
                            print("TV...!");
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    1.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.tv,
                                  color: Color.fromARGB(255, 5, 105, 186),
                                  size: 55,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "TV",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Row 2................................................................
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const main_Watch_Products(),
                              ),
                            );
                            print("Watch...!");
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    1.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.watch,
                                  color: Color.fromARGB(255, 5, 105, 186),
                                  size: 55,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Watch",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Row 3................................................................
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const main_camera_products(),
                              ),
                            );
                            print("Camera...!");
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    1.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  color: Color.fromARGB(255, 5, 105, 186),
                                  size: 55,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Camera",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Column 3
//................................................................
                  //Column 3
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const main_tablet_products(),
                              ),
                            );
                            print("Tablets...!");
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    1.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.tablet_rounded,
                                  color: Color.fromARGB(255, 5, 105, 186),
                                  size: 55,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Tablets",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Row 2................................................................
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const main_desktop_products(),
                              ),
                            );
                            print("Destop...!");
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    1.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.desktop_windows_rounded,
                                  color: Color.fromARGB(255, 5, 105, 186),
                                  size: 55,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Desktop",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Row 3................................................................
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const main_foods_products(),
                              ),
                            );
                            print("Foods...!");
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    1.0,
                                    5.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 3.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.food_bank,
                                  color: Color.fromARGB(255, 5, 105, 186),
                                  size: 55,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Foods",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => _launchURL('https://github.com/Smey09'),
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topLeft,
                                colors: [
                                  Color.fromARGB(255, 255, 156, 217),
                                  Color.fromARGB(255, 152, 190, 255),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 252, 96, 255),
                                  offset: Offset(
                                    1.0,
                                    1.0,
                                  ),
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                ), //BoxShadow
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/home/github-icon.png"),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Contact Me",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> imagePaths = [
    'assets/images/home/Slider/ecommerce_image.jpg',
    'assets/images/home/Slider/Poster_macbook.png',
    'assets/images/home/Slider/Poster_Phone.png',
    'assets/images/home/Slider/Poster_watch.png',
    'assets/images/home/Slider/Poster_Monitor.png',
    'assets/images/home/Slider/Poster_TV.png',
    'assets/images/home/Slider/Poster_Discount.png',
  ];

  Future<void> _launchURL(String url) async {
    if (!await canLaunchUrl(Uri.parse(url))) {
      throw 'this link can not open $url';
    }
    await launchUrl(Uri.parse(url));
  }
}
