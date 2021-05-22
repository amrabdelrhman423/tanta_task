import 'package:flutter/material.dart';
import 'package:tanta_task_app/size_config.dart';

import '../../../consts.dart';

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Senior Brand Designer",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    )),
              ],
            ),
            Text(
              "Looking for someone to help create a signature strip something similar to the attachments below. It would be a strip of all the company logo, and the collaborative companies badges...",
              style: TextStyle(wordSpacing: 1, fontSize: 12, color: cGraytext),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildDetailsPost(number: "10 hrs/week", title: "Less Than"),
                    VerticalDivider(
                      width: 5,
                      color: Colors.grey,
                    ),
                    buildDetailsPost(
                        number: "6 Applicants", title: "More Than"),
                    VerticalDivider(
                      width: 5,
                      color: Colors.grey,
                    ),
                    buildDetailsPost(number: "2 h ago", title: "Posted"),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: getProportionateScreenWidth(context, 40),
                  height: 50,
                  decoration: BoxDecoration(
                      color: cBlueBtn, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Close Jop",
                      style: TextStyle(
                          color: cWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(context, 40),
                  height: 50,
                  decoration: BoxDecoration(
                      color: cGreen, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "View Applicants",
                      style: TextStyle(
                          color: cWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildDetailsPost({String number, String title}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: cGray, fontSize: 10),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          number,
          style: TextStyle(
              color: cBlue, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
