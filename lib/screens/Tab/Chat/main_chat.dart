import '/screens/Tab/Chat/Screen/General/main_general_chat.dart';
import 'package:flutter/material.dart';

import 'Screen/Group/mian_group_chat.dart';
import 'Screen/Others/main_others_group.dart';
import 'Screen/Personal/main_personal_chat.dart';

class main_chat extends StatefulWidget {
  const main_chat({super.key});

  @override
  State<main_chat> createState() => _main_chatState();
}

class _main_chatState extends State<main_chat> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              tabs: <Widget>[
                Tab(text: "General"),
                Tab(text: "Personal"),
                Tab(text: "Group"),
                Tab(text: "Others"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  MainGeneralChat(),
                  MainPersonalChat(),
                  main_group_chat(),
                  main_others_group(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
