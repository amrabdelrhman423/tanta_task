import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/Favorite/components/favourite_list.dart';
import 'package:tanta_task_app/components/customappbar.dart';

class FavoriteScreen extends StatelessWidget {
  static String routeName = "/fav";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: "Favorite",
            back: true,
          ),
          Expanded(child: FavoritList())
        ],
      ),
    );
  }
}
