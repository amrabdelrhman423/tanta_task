import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/Favorite/favorite.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundcolor,
      height: getProportionateScreenHeight(context, 10),
      child: Row(children: [
        buildSearchField(context),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, FavoriteScreen.routeName),
          child: Container(
            width: getProportionateScreenWidth(context, 10),
            height: 40,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: cGreen,
              borderRadius: BorderRadius.circular(90),
            ),
            child: Center(
              child: Icon(
                Icons.star,
                color: cWhite,
              ),
            ),
          ),
        )
      ]),
    );
  }

  Widget buildSearchField(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(context, 80),
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search For Jobs",
          border: InputBorder.none,
          suffixIcon: Icon(Icons.tune),
          icon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ),
      ),
    );
  }
}
