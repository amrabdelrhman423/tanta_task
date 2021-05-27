import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/ManpowerProfile/components/manpower_certificate.dart';
import 'package:tanta_task_app/consts.dart';
import 'package:tanta_task_app/size_config.dart';

import 'manpower_profile_certificat_list.dart';

class ManpowerProfileContent extends StatefulWidget {
  @override
  _ManpowerProfileContentState createState() => _ManpowerProfileContentState();
}

class _ManpowerProfileContentState extends State<ManpowerProfileContent> {
  bool isAbout = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          buildCustomTabView(),
          Expanded(
            child: Container(
                width: getProportionateScreenWidth(context, 90),
                padding: EdgeInsets.all(5),
                child: isAbout
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Looking for someone to help create a signature strip something similar to the attachments below. It would be a strip of all the company logo, and the collaborative companies badges... \n \nLooking for someone to help create a signature strip something similar to the attachments below. It would be a strip of all the company logo, and the collaborative companies badges...\n \n Looking for someone to help create a signature strip something similar to the attachments below. It would be a strip of all the company logo, and the collaborative companies badges...\n \n Looking for someone to help create a signature strip something similar to the attachments below. It would be a strip of all the company logo, and the collaborative companies badges...",
                          style: TextStyle(color: cMsessage),
                        ),
                      )
                    : ManpowerProfileCertificateList()),
          )
        ],
      ),
    );
  }

  Widget buildCustomTabView() {
    return Container(
      width: getProportionateScreenWidth(context, 90),
      height: 40,
      decoration: BoxDecoration(
          color: kbackgroundcolor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isAbout = true;
              });
            },
            child: Container(
              width: getProportionateScreenWidth(context, 45),
              height: 40,
              decoration: BoxDecoration(
                  color: isAbout ? Colors.green : kbackgroundcolor,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "About",
                  style: TextStyle(
                      color: isAbout ? cWhite : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isAbout = false;
              });
            },
            child: Container(
              width: getProportionateScreenWidth(context, 45),
              height: 40,
              decoration: BoxDecoration(
                  color: isAbout ? kbackgroundcolor : Colors.green,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Certificate",
                  style: TextStyle(
                      color: isAbout ? Colors.black : cWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
