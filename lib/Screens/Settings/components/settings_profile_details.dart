import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/ManpowerProfile/manpower_profile.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class SettingsProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundcolor,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, ManPowerProfile.routeName),
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: getProportionateScreenWidth(context, 13),
                  height: getProportionateScreenWidth(context, 13),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      border: Border.all(color: cWhite, width: 4),
                      color: cWhite,
                      image: DecorationImage(
                          image: AssetImage("assets/profileS.png"),
                          fit: BoxFit.fill)),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    "Ahmed Mohamed Salem",
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text(
                    "asalem@icloud.com",
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
