import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/ManpowerProfile/manpower_profile.dart';

import '../../../consts.dart';
import 'favorite_item.dart';

class FavoritList extends StatelessWidget {
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
          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ManPowerProfile.routeName);
              },
              child: FavoriteItem());
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
