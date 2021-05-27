import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/Notifications/components/notification_item.dart';

class NotificationsList extends StatefulWidget {
  @override
  _NotificationsListState createState() => _NotificationsListState();
}

class _NotificationsListState extends State<NotificationsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      padding: EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return NotificationItem();
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
