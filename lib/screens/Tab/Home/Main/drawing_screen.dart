import 'package:flutter/material.dart';

import '../../../Pages/App_Bar/Setting/settingPage.dart';
import '../../../Pages/Drawing/Add New Account/add_new.dart';

class Drawing_srceen extends StatefulWidget {
  const Drawing_srceen({super.key});

  @override
  State<Drawing_srceen> createState() => _Drawing_srceenState();
}

class _Drawing_srceenState extends State<Drawing_srceen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 57, 135, 199),
        child: ListView(
          padding: const EdgeInsets.all(1.0),
          children: [
            const SizedBox(height: 65),
            Title(
              color: Colors.red,
              child: const Center(
                child: Text(
                  "App Demo",
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    height: 70,
                    width: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 162, 243),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 0, 255, 34),
                                    width: 1.7,
                                  ),
                                  color:
                                      const Color.fromARGB(255, 255, 133, 243),
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/home/my profile.jpeg"),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Padding(
                                padding: EdgeInsets.only(top: 3.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Smey Advance",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "ID: ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "B20222484",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
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
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 162, 243),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AddNew_Account(),
                                ),
                              );
                              print("Add New Account...!");
                            },
                            child: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 35),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.add_box_sharp,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Add New Account",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: const Icon(
                Icons.chat,
                color: Colors.white,
              ),
              title: const Text(
                'Chat Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                print("chat settings");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              title: const Text(
                'Notifications',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                print("Notifications");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.devices_sharp,
                color: Colors.white,
              ),
              title: const Text(
                'Devices',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                print('Devices');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              title: const Text(
                'Language',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                print("Language");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.history,
                color: Colors.white,
              ),
              title: const Text(
                'History',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                print("History");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                print("Press on the icon button settings");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const settingPage()),
                );
              },
            ),
            Column(
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Help',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: GestureDetector(
                          onTap: () => print("Ask for question ?"),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.question_answer_rounded,
                                color: Colors.white,
                                size: 19,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Ask for question",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: GestureDetector(
                          onTap: () =>
                              print("DO YOU WANT TO CALL TO +855 99608096 ?"),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 19,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "+855 99608096",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: GestureDetector(
                          onTap: () => print(
                              "Conneting to roemreaksmey7@gmail.com..........!"),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.mail,
                                color: Colors.white,
                                size: 19,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "roemreaksmey7@gmail.com",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Column(
              children: [
                Text(
                  "App Version 1.7.2.0",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Date Sunday, 10 March 2024",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "1:30 AM",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
