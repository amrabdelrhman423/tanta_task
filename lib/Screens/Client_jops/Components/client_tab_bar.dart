import 'package:flutter/material.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class ClientCustomTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(context, 90),
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Row(
              children: [
                ImageIcon(
                  AssetImage("assets/helmet.png"),
                  size: 40,
                  color: cGreenjop,
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            "ManPower",
                            style: TextStyle(color: cGreenjop, fontSize: 18),
                          ),
                          Container(
                            margin: EdgeInsets.all(3),
                            height: 2,
                            width: 50,
                            color: cGreenjop,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                ImageIcon(
                  AssetImage("assets/group.png"),
                  size: 44,
                  color: cGrayjop,
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Equipment",
                            style: TextStyle(color: cGrayjop, fontSize: 18),
                          ),
                          Container(
                            margin: EdgeInsets.all(3),
                            height: 2,
                            width: 50,
                            color: cGray,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
