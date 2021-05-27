import 'package:flutter/material.dart';

import '../consts.dart';

Widget buildDropdownButton(List<String> items, String selectedValue) {
  return Container(
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: .75,
        blurRadius: .75,
      ),
    ], color: pale_grey, borderRadius: BorderRadius.circular(10)),
    child: DropdownButton<String>(
      dropdownColor: cWhite,
      icon: Icon(Icons.arrow_drop_down_rounded),
      isExpanded: true,
      style: TextStyle(color: Colors.black),
      elevation: 0,
      underline: SizedBox(),
      value: selectedValue,
      onChanged: (_) {},
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              value,
            ),
          ),
        );
      }).toList(),
    ),
  );
}
