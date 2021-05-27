import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanta_task_app/components/customappbar.dart';

import '../../consts.dart';
import '../../size_config.dart';
import 'components/account_option.dart';
import 'components/settings_profile_details.dart';

class SettingsScreen extends StatefulWidget {
  static String routeName = "/settings";

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: "Setting",
        ),
        SettingsProfileDetails(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            color: cWhite,
            child: ListView(
              children: [
                Row(
                  children: [
                    Text(
                      "Account Settings",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                buildAccountOptionRow(context, "Change password", Icons.lock),
                buildNotificationOptionRow(
                    "Push notifications", Icons.notifications),
                SizedBox(
                  height: getProportionateScreenHeight(context, 2),
                ),
                Divider(
                  height: 10,
                  thickness: 2,
                ),
                SizedBox(
                  height: 5,
                ),
                buildAccountOptionRow(context, "Payment", Icons.payments),
                buildAccountOptionRow(context, "About us", Icons.priority_high),
                buildAccountOptionRow(
                    context, "Privacy policy", Icons.privacy_tip),
                buildAccountOptionRow(
                    context, "Terms and conditions", Icons.receipt),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  height: 10,
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign out",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        )),
                  ],
                )
              ],
            ),
          ),
        ))
      ],
    );
  }

  Row buildNotificationOptionRow(String title, IconData iconData) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              gradient: kPrimaryGradientColor,
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Icon(
              iconData,
              color: cWhite,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Expanded(child: SizedBox()),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {
                setState(() {
                  isActive = val;
                });
              },
            ))
      ],
    );
  }
}
