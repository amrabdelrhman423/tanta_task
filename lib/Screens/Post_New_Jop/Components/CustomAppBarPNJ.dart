import 'package:flutter/material.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class AppBarNewJop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(context, 15),
      decoration: BoxDecoration(
        gradient: kPrimaryGradientColor,
      ),
      child: Column(
        children: [
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: cWhite,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(context, 5),
                ),
                Text(
                  "Post New Jop",
                  style: TextStyle(
                      color: cWhite, fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Expanded(child: SizedBox()),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(color: cWhite, width: 4),
                      color: cWhite,
                      image: DecorationImage(
                          image: AssetImage("assets/profileS.png"),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
