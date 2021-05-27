import 'package:flutter/material.dart';
import 'package:tanta_task_app/components/build_details.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class ManpowerProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundcolor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(color: cWhite, width: 4),
                      color: cWhite,
                      image: DecorationImage(
                          image: AssetImage("assets/profileS.png"),
                          fit: BoxFit.fill)),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "Ahmed Mohamed Salem",
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Text(
                      "Senior Brand Designer",
                      style: TextStyle(
                          fontSize: 16, color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                ),
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
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildDetails(number: "19", title: "Applied"),
                  buildDetails(number: "45", title: "Reviewed"),
                  buildDetails(number: "48", title: "Contacted"),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 8),
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildProfileContact(context, dark_peach, Icons.email),
                buildProfileContact(
                    context, aqua_marine, Icons.message_rounded),
                buildProfileContact(context, dull_yellow, Icons.person_add_alt),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildProfileContact(
      BuildContext context, Color color, IconData iconData) {
    return Container(
      width: getProportionateScreenWidth(context, 25),
      height: 40,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Icon(
          iconData,
          color: cWhite,
        ),
      ),
    );
  }
}
