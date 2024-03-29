import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/History/history.dart';
import 'package:tanta_task_app/Screens/Messages/messages.dart';
import 'package:tanta_task_app/Screens/Notifications/notifications.dart';
import 'package:tanta_task_app/routes.dart';
import 'Screens/Home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task tanta company',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
