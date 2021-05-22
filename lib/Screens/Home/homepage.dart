import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/Client_jops/client_jops.dart';
import 'package:tanta_task_app/Screens/Favorite/favorite.dart';
import 'package:tanta_task_app/Screens/Post_New_Jop/post_new_jop.dart';
import 'package:tanta_task_app/Screens/Profile/profile.dart';
import 'package:tanta_task_app/Screens/Settings/settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = [
    ProfileScreen(),
    FavoriteScreen(),
    PostNewJopScreen(),
    ClientJopsScreen(),
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
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "jobs"),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long), label: "history"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "notifications "),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
        ],
      ),
    );
  }
}
