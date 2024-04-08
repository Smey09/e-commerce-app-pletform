import '/themes/chat/chat_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../Data/chat/general_data.dart';

class MainGeneralChat extends StatefulWidget {
  const MainGeneralChat({Key? key}) : super(key: key);

  @override
  State<MainGeneralChat> createState() => _MainGeneralState();
}

class _MainGeneralState extends State<MainGeneralChat> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        Message message = messages[index];
        return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
          child: Container(
            height: 70,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color.fromARGB(255, 255, 162, 243),
                width: 1,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 209, 234, 255),
                  offset: Offset(1.0, 1.0),
                  blurRadius: 1.0,
                  spreadRadius: 1.0,
                ),
              ],
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
                            color: const Color.fromARGB(255, 0, 255, 34),
                            width: 1.7,
                          ),
                          color: const Color.fromARGB(255, 237, 186, 251),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(message.imageUrl),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              message.name,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: chartColor.userName,
                              ),
                            ),
                            Text(
                              message.message,
                              style: const TextStyle(
                                color: chartColor.voiceMessage,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.add_task_outlined,
                            color: Colors.blue,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            message.time,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
