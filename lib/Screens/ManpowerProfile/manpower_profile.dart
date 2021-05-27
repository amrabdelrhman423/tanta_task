import 'package:flutter/material.dart';
import 'package:tanta_task_app/components/customappbar.dart';

import 'components/manpower_profile_content.dart';
import 'components/manpower_profile_details.dart';

class ManPowerProfile extends StatefulWidget {
  static String routeName = "/profileManPower";

  @override
  _ManPowerProfileState createState() => _ManPowerProfileState();
}

class _ManPowerProfileState extends State<ManPowerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: "Profile Details",
            back: true,
          ),
          ManpowerProfileDetails(),
          Expanded(child: ManpowerProfileContent())
        ],
      ),
    );
  }
}
