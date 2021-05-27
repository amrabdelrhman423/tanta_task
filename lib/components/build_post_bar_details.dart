import 'package:flutter/material.dart';

import '../consts.dart';

Widget buildDetailsPost({String number, String title}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(color: cGray, fontSize: 10),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        number,
        style:
            TextStyle(color: cBlue, fontSize: 16, fontWeight: FontWeight.w700),
      ),
    ],
  );
}
