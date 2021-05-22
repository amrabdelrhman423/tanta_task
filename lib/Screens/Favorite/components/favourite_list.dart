import 'package:flutter/material.dart';

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
        itemBuilder: (context, index) {
          return FavoriteItem();
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
