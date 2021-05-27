import 'package:flutter/material.dart';
import 'package:tanta_task_app/components/build_post_bar_details.dart';
import 'package:tanta_task_app/size_config.dart';

import '../../../consts.dart';
import 'bottomsheet__viewApplicant_list.dart';

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
                        fontSize: 19,
                      ),
                    )),
              ],
            ),
            Text(
              "Looking for someone to help create a signature strip something similar to the attachments below. It would be a strip of all the company logo, and the collaborative companies badges...",
              style: TextStyle(wordSpacing: 1, fontSize: 14, color: cGraytext),
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
                  width: getProportionateScreenWidth(context, 35),
                  height: 40,
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
                GestureDetector(
                  onTap: () {
                    showBottomsheetApplicant(context);
                  },
                  child: Container(
                    width: getProportionateScreenWidth(context, 35),
                    height: 40,
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
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  showBottomsheetApplicant(BuildContext context) {
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
              Expanded(child: ShowApplicantList()),
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
                      "Close Jop",
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
