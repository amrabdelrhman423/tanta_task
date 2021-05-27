import 'package:flutter/material.dart';
import 'package:tanta_task_app/components/customappbar.dart';
import 'Components/Profile_list.dart';
import 'Components/profile_details.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            title: "Profile",
            back: true,
          ),
          ProfileDetails(),
          Expanded(child: ProfileList()),
        ],
      ),
    );
  }
}
