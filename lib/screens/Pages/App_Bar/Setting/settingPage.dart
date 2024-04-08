import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class settingPage extends StatefulWidget {
  const settingPage({super.key});

  @override
  State<settingPage> createState() => __settingPageState();
}

class __settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Application Setting",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ImageSlideshow(
              indicatorColor: Colors.blue,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                Image.asset(
                  'assets/images/home/my profile.jpeg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          const Text(
            'Signature Blend\nCentral America',
            style: TextStyle(
              fontSize: 36.0,
              fontFamily: 'Sacramento', // Or any other font you like
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 0, 136, 248),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 255, 34),
                          width: 1.7,
                        ),
                        color: const Color.fromARGB(255, 255, 133, 243),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage("assets/images/home/my profile.jpeg"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Padding(
                      padding: EdgeInsets.zero,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Smey Advance ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "- រុឹម រស្មី",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "ID Account: ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "B20222484",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 253, 139),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              color: Colors.white, // Set your desired color here
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: const Padding(
                        padding: EdgeInsets.zero,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Color.fromARGB(255, 243, 0, 166)),
                          backgroundColor: Colors.white,
                          strokeWidth: 10.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
