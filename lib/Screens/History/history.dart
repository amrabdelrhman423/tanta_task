import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/History/components/post_history_list.dart';
import 'package:tanta_task_app/components/customappbar.dart';

class HistoryScreen extends StatelessWidget {
  static String routeName = "/history";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: "History",
          ),
          Expanded(child: PostHistoryList())
        ],
      ),
    );
  }
}
