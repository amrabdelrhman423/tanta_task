import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/Notifications/components/notifications_list.dart';
import 'package:tanta_task_app/components/customappbar.dart';

import 'components/notification_item.dart';

class NotificationsScreen extends StatefulWidget {
  static String routeName = "/notifications";

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: "Notifications",
          ),
          Expanded(child: NotificationsList())
        ],
      ),
    );
  }
}
