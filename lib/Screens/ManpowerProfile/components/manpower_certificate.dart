import 'package:flutter/material.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class ManpowerCertificate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: getProportionateScreenWidth(context, 13),
            height: getProportionateScreenWidth(context, 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: cWhite,
                image: DecorationImage(
                    image: AssetImage("assets/profileS.png"),
                    fit: BoxFit.fill)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 20,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: cTimeMsessage,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Oct 20, 2021",
                    style: TextStyle(fontSize: 11, color: cTimeMsessagetext),
                  ),
                ),
              ),
              Container(
                width: getProportionateScreenWidth(context, 70),
                child: ListTile(
                  title: Text(
                    "UX Foundation Courses",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Looking for someone to help create a signature strip something similar to the attachments below.",
                    style: TextStyle(
                      fontSize: 11,
                      color: cMsessage,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
