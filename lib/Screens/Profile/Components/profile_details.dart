import 'package:flutter/material.dart';
import 'package:tanta_task_app/components/build_details.dart';

import '../../../consts.dart';

class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundcolor,
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90), color: cWhite),
                  child: Center(child: Image.asset("assets/profileP.png")),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "Ahmed Mohamed",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      "Third way Development",
                      style: TextStyle(
                          fontSize: 16, color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: cGreen,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.edit,
                      color: cGrayaccent,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
                color: cWhite, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildDetails(number: "19", title: "Open Jop"),
                buildDetails(number: "45", title: "Hire"),
                buildDetails(number: "48", title: "Contacted"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
