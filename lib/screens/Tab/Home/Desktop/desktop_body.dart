import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Pages/App_Bar/Search/search.dart';
import 'Data/List_items.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildMainListView(context),
    );
  }

  Widget _buildMainListView(context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 7.0, left: 25.0, right: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello Smey !",
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
                                    "Website",
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 16 / 3,
                        child: ImageSlideshow(
                          indicatorColor: Colors.blue,
                          onPageChanged: (value) {
                            debugPrint('Page changed: $value');
                          },
                          autoPlayInterval: 6000,
                          isLoop: true,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              child: Image.asset(
                                  'assets/images/home/Slider/ecommerce_image.jpg',
                                  width: 450,
                                  height: 150,
                                  fit: BoxFit.fill),
                            ),
                            // ClipRRect(
                            //   borderRadius: const BorderRadius.all(
                            //     Radius.circular(10.0),
                            //   ),
                            //   child: Image.asset(
                            //     'assets/images/home/Slider/Poster_mac&iphone.png',
                            //     width: 450,
                            //     height: 150,
                            //     fit: BoxFit.cover,
                            //   ),
                            // ),
                            ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              child: Image.asset(
                                'assets/images/home/Slider/Poster_macbook.png',
                                width: 450,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              child: Image.asset(
                                'assets/images/home/Slider/Poster_Phone.png',
                                width: 450,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              child: Image.asset(
                                'assets/images/home/Slider/Poster_watch.png',
                                width: 450,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
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
                    const Padding(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Divider(
                        height: 2,
                        color: Color.fromARGB(255, 238, 55, 255),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        children: items
                            .map(
                              (ListItem item) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => item.page,
                                    ),
                                  );
                                  print("Press On the${item.text}");
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
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        item.icon,
                                        color: const Color.fromARGB(
                                            255, 5, 105, 186),
                                        size: 55,
                                      ),
                                      const SizedBox(height: 5.0),
                                      Text(
                                        item.text,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () =>
                                _launchURL('https://github.com/Smey09'),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _launchURL(String url) async {
    if (!await canLaunchUrl(Uri.parse(url))) {
      throw 'this link can not open $url';
    }
    await launchUrl(Uri.parse(url));
  }
}
