import 'package:flutter/material.dart';

import '../../../consts.dart';
import '../../../size_config.dart';

class PostNewJopTabTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(context, 90),
      margin: EdgeInsets.only(top: getProportionateScreenHeight(context, 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildTabBarItem(
              imageIcon: "assets/helmet.png",
              tabTitle: "ManPower",
              isActive: true),
          buildTabBarItem(
              imageIcon: "assets/group.png",
              tabTitle: "Equipment",
              isActive: false),
        ],
      ),
    );
  }

  Widget buildTabBarItem(
          {@required String imageIcon,
          @required String tabTitle,
          bool isActive = false}) =>
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ImageIcon(
              AssetImage(imageIcon),
              size: 50,
              color: isActive ? cGreenjop : cGrayjop,
            ),
            Container(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          tabTitle,
                          style: TextStyle(
                              color: isActive ? cGreenjop : cGrayjop,
                              fontSize: 18),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(3),
                        height: 2,
                        width: 60,
                        color: isActive ? cGreenjop : cGrayjop,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
}
