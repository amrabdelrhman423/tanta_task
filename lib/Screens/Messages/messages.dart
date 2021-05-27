import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/Messages/components/messages_list.dart';
import 'package:tanta_task_app/components/customappbar.dart';

import 'components/message_item.dart';

class MessagesScreens extends StatefulWidget {
  static String routeName = "/messages";

  @override
  _MessagesScreensState createState() => _MessagesScreensState();
}

class _MessagesScreensState extends State<MessagesScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: "Messages",
          ),
          Expanded(child: MessagesList())
        ],
      ),
    );
  }
}
