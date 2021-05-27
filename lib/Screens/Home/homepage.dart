import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tanta_task_app/Screens/Client_jops/client_jops.dart';
import 'package:tanta_task_app/Screens/Favorite/favorite.dart';
import 'package:tanta_task_app/Screens/History/history.dart';
import 'package:tanta_task_app/Screens/Messages/messages.dart';
import 'package:tanta_task_app/Screens/Notifications/notifications.dart';
import 'package:tanta_task_app/Screens/Post_New_Jop/post_new_jop.dart';
import 'package:tanta_task_app/Screens/Profile/profile.dart';
import 'package:tanta_task_app/Screens/Settings/settings.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = [
    PostNewJopScreen(),
    HistoryScreen(),
    MessagesScreens(),
    NotificationsScreen(),
    SettingsScreen(),
  ];
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: (val) {
          setState(() {
            _currentindex = val;
          });
        },
        fixedColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/jobs.svg",
              color: Colors.grey,
            ),
            label: "jobs",
            activeIcon: SvgPicture.asset(
              "assets/jobs.svg",
            ),
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/history_off.svg"),
              label: "history",
              activeIcon: SvgPicture.asset(
                "assets/history_on.svg",
              )),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/message_off.svg"),
              activeIcon: SvgPicture.asset("assets/message_on.svg"),
              label: "message"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/union.svg"),
              label: "notifications",
              activeIcon: SvgPicture.asset(
                "assets/union.svg",
                color: Colors.blue,
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
        ],
      ),
    );
  }
}
