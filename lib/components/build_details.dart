import 'package:flutter/material.dart';
import '../consts.dart';

Widget buildDetails({String number, String title}) {
  return Column(
    children: [
      Text(
        number,
        style:
            TextStyle(color: cBlue, fontSize: 16, fontWeight: FontWeight.w700),
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        title,
        style: TextStyle(color: cGray, fontSize: 16),
      )
    ],
  );
}
