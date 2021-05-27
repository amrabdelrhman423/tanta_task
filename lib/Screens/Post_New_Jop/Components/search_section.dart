import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tanta_task_app/Provider/post_new_jop_provider.dart';
import 'package:tanta_task_app/Screens/Favorite/favorite.dart';

import '../../../consts.dart';
import '../../../size_config.dart';
import 'bottomsheet_filter.dart';

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
        onTap: () {
          Provider.of<PostNewJopProvider>(context, listen: false)
              .changeisSerach();
        },
        decoration: InputDecoration(
          hintText: "Search For Jobs",
          border: InputBorder.none,
          suffixIcon: IconButton(
              onPressed: () {
                showBottomSheetFilter(context);
              },
              icon: Icon(Icons.tune)),
          icon: Icon(Icons.search),
        ),
      ),
    );
  }

  showBottomSheetFilter(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
          height: MediaQuery.of(context).size.height * 0.70,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(30.0),
              topRight: const Radius.circular(30.0),
            ),
          ),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Set Filters",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                ),
              ),
              Expanded(child: BottomSheetFilter()),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  width: getProportionateScreenWidth(context, 80),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Apply Filters",
                      style: TextStyle(color: cWhite, fontSize: 17),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 3,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
