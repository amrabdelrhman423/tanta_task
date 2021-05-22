import 'package:flutter/material.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class SettingsProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundcolor,
      height: getProportionateScreenHeight(context, 12),
      child: Column(children: [
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
