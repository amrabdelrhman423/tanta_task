import 'package:flutter/material.dart';

import '../../../consts.dart';
import 'post_history_item.dart';

class PostHistoryList extends StatefulWidget {
  @override
  _PostHistoryListState createState() => _PostHistoryListState();
}

class _PostHistoryListState extends State<PostHistoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 11),
      decoration: BoxDecoration(
        color: cWhite,
      ),
      child: ListView.separated(
        itemCount: 3,
        padding: EdgeInsets.all(0),
        itemBuilder: (context, index) {
          return PostHistoryItem();
        },
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
}
