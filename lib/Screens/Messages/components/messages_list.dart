import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/Messages/components/message_item.dart';

import '../../../consts.dart';

class MessagesList extends StatefulWidget {
  @override
  _MessagesListState createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      padding: EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return MessageItem();
      },
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsetsDirectional.only(start: 25.0, end: 25.0),
        child: Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.grey[300],
        ),
      ),
    );
  }
}
