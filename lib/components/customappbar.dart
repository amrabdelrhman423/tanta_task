import 'package:flutter/material.dart';

import '../consts.dart';
import '../size_config.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool back;

  CustomAppBar({this.title, this.back = false});
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
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                back
                    ? IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: cWhite,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                    : Expanded(child: SizedBox()),
                Text(
                  title,
                  style: TextStyle(
                      color: cWhite, fontSize: 22, fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
