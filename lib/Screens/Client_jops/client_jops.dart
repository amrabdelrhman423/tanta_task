import 'package:flutter/material.dart';
import 'package:tanta_task_app/components/customappbar.dart';
import 'package:tanta_task_app/consts.dart';
import 'package:tanta_task_app/size_config.dart';

import 'Components/tab_bar.dart';

class ClientJopsScreen extends StatefulWidget {
  static String routeName = "/ClientJop";

  @override
  _ClientJopsScreenState createState() => _ClientJopsScreenState();
}

class _ClientJopsScreenState extends State<ClientJopsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: "Post New Jop",
            back: true,
          ),
          PostNewJopTabTabbar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildtextfield(
                      title: "Jop Title", hint: 'Senior UI / UX Designer'),
                  buildtextfield(title: "Jop Description", max: 128),
                  buildtextfield(title: "Jop Requirements", max: 128),
                  Row(
                    children: [
                      buildtextfieldRow(
                          title: "Working Hours", hint: "08   /   Week"),
                      buildtextfieldRow(
                          title: "Work Term", hint: "08   /   Month"),
                    ],
                  ),
                  buildtextfield(title: "Location", hint: "Doha, Qatar"),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: getProportionateScreenHeight(context, 6),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  "Confirm & Post",
                  style: TextStyle(color: cWhite),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildtextfield({String title, String hint, int max}) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title == null ? "" : title,
            style: TextStyle(color: cLabelJop, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: cTextfield, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 3, color: cGreenjop)),
                ),
                child: TextField(
                  cursorColor: Colors.green,
                  maxLength: max,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      //  contentPadding: new EdgeInsets.symmetric(vertical: 0.0),
                      hintText: hint == null ? "" : hint,
                      hintStyle: TextStyle(fontSize: 16.0, color: Colors.grey)),
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildtextfieldRow({String title, String hint, int max}) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title == null ? "" : title,
              style: TextStyle(color: cLabelJop, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: cTextfield, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 3, color: cGreenjop)),
                  ),
                  child: TextField(
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        //  contentPadding: new EdgeInsets.symmetric(vertical: 0.0),
                        hintText: hint == null ? "" : hint,
                        hintStyle:
                            TextStyle(fontSize: 16.0, color: Colors.grey)),
                    maxLength: max,
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
