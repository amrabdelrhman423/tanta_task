import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/Favorite/components/favourite_list.dart';
import 'package:tanta_task_app/components/customappbar.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: "Favorite",
          ),
          Expanded(child: FavoritList())
        ],
      ),
    );
  }
}
