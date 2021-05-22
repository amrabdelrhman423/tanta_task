import 'package:flutter/material.dart';
import 'package:tanta_task_app/components/build_details.dart';

import '../../../consts.dart';

class FavoriteItem extends StatelessWidget {
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
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90), color: cWhite),
                  child: Center(child: Image.asset("assets/profileP.png")),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "Ahmed Hossam",
                      style: TextStyle(fontSize: 17),
                    ),
                    subtitle: Text(
                      "Real Estate Developer",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    trailing: Text(
                      "Doha, Qatar",
                      style: TextStyle(color: cFavLocation),
                    ),
                  ),
                ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Text(
                //       "Doha, Qatar",
                //       style: TextStyle(color: cFavLocation),
                //     )
                //   ],
                // ),
                Container(
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
                )
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
                    buildDetails(number: "19", title: "Applied"),
                    VerticalDivider(
                      width: 5,
                      color: Colors.grey,
                    ),
                    buildDetails(number: "19", title: "Applied"),
                    VerticalDivider(
                      width: 5,
                      color: Colors.grey,
                    ),
                    buildDetails(number: "19", title: "Applied")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
