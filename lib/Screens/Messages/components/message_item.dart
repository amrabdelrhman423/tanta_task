import 'package:flutter/material.dart';

import '../../../consts.dart';

class MessageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: cIceBlue,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Stack(
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
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(90)),
                    ),
                  )
                ],
              ),

              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Senior Brand Designer",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 70,
                            height: 20,
                            decoration: BoxDecoration(
                                color: cTimeMsessage,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "07:34 PM",
                                style: TextStyle(
                                    fontSize: 11, color: cTimeMsessagetext),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Looking for someone to help create a signature strip something similar to the attachments below.",
                        style: TextStyle(
                            fontSize: 12, wordSpacing: 1.5, color: cMsessage),
                      ),
                    ),
                  ],
                ),
              )
              // Expanded(
              //   child: ListTile(
              //     title: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text(
              //         "Senior Brand Designer",
              //         style:
              //             TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              //       ),
              //     ),
              //     subtitle: Text(
              //       "Looking for someone to help create a signature strip something similar to the attachments below.",
              //       style: TextStyle(
              //           fontSize: 12, wordSpacing: 1.5, color: cMsessage),
              //     ),
              //   ),
              // ),
            ],
          )),
    );
  }
}
