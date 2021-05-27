import 'package:flutter/material.dart';

import '../../../consts.dart';

class NotificationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                      color: cTimeMsessage,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Jan 30",
                      style: TextStyle(fontSize: 11, color: cTimeMsessagetext),
                    ),
                  ),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      color: battleship_grey,
                      borderRadius: BorderRadius.circular(90)),
                  child: Center(
                      child: Icon(
                    Icons.close,
                    color: cWhite,
                    size: 20,
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: RichText(
                text: TextSpan(
                  text:
                      'You have received an invitation to interview for the job',
                  style: TextStyle(fontSize: 17, color: greyish_brown),
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' "Senior UI/UX Designer". ',
                        style: TextStyle(color: nasty_green)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
