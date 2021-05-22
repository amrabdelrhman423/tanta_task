import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/Post_New_Jop/Components/CustomAppBarPNJ.dart';
import 'package:tanta_task_app/Screens/Post_New_Jop/Components/posts_list.dart';

import 'Components/search_section.dart';

class PostNewJopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarNewJop(),
          SearchSection(),
          Expanded(child: PostsList())
        ],
      ),
    );
  }
}
