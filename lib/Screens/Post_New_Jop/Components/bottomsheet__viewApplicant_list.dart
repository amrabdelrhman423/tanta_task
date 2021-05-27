import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/ManpowerProfile/manpower_profile.dart';
import 'package:tanta_task_app/size_config.dart';

import '../../../consts.dart';

class ShowApplicantList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 0),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            margin: EdgeInsets.all(5),
            elevation: 0.5,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90), color: cWhite),
                  child: Center(child: Image.asset("assets/profileP.png")),
                ),
                SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ahmed Hossam",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Real Estate Developer",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Text(
                      "Doha, Qatar",
                      style: TextStyle(color: cFavLocation),
                    ),
                  ],
                ),
                SizedBox(
                  width: getProportionateScreenWidth(context, 7),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ManPowerProfile.routeName);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: cGreen,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "View Profile",
                        style: TextStyle(color: cWhite),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
