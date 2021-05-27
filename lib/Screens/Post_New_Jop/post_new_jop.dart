import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tanta_task_app/Provider/post_new_jop_provider.dart';
import 'package:tanta_task_app/Screens/Post_New_Jop/Components/CustomAppBarPNJ.dart';
import 'package:tanta_task_app/Screens/Post_New_Jop/Components/posts_list.dart';
import 'package:tanta_task_app/consts.dart';
import 'package:tanta_task_app/size_config.dart';

import 'Components/bottomsheet__viewApplicant_list.dart';
import 'Components/search_section.dart';

class PostNewJopScreen extends StatefulWidget {
  static String routeName = "/PostNewjop";

  @override
  _PostNewJopScreenState createState() => _PostNewJopScreenState();
}

class _PostNewJopScreenState extends State<PostNewJopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<PostNewJopProvider>(
        create: (context) => PostNewJopProvider(),
        child: Consumer<PostNewJopProvider>(
          builder: (context, postNewJopScreen, _) {
            return Column(
              children: [
                AppBarNewJop(),
                SearchSection(),
                Expanded(
                    child: postNewJopScreen.isSearch
                        ? Center(
                            child: SvgPicture.asset("assets/type_you_need.svg"),
                          )
                        : PostsList())
              ],
            );
          },
        ),
      ),
    );
  }
}
