import 'package:flutter/material.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class ProfileList extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List<Map> details = [
    {'titel': "Company Name", 'icon': Icons.business},
    {'titel': "Company Address", 'icon': Icons.apartment},
    {'titel': "Company Number", 'icon': Icons.call},
    {'titel': "Company Email", 'icon': Icons.markunread_outlined},
    {'titel': "Company Website ", 'icon': Icons.public},
    {'titel': "Company Size", 'icon': Icons.people}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 11),
      decoration: BoxDecoration(
        color: cWhite,
      ),
      child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(
              height: getProportionateScreenHeight(context, 8),
              margin: EdgeInsets.all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: cGraytextfield,
              ),
              child: Row(
                children: [
                  Container(
                    height: getProportionateScreenHeight(context, 8),
                    width: getProportionateScreenWidth(context, 18),
                    decoration: BoxDecoration(
                        color: cBlue, borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Icon(
                        details[index]['icon'],
                        color: cWhite,
                        size: getProportionateScreenWidth(context, 8),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      details[index]['titel'],
                      style: TextStyle(color: cGraytext),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
