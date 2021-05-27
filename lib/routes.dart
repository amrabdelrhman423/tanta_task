import 'package:flutter/material.dart';
import 'package:tanta_task_app/Screens/Client_jops/client_jops.dart';
import 'package:tanta_task_app/Screens/Favorite/favorite.dart';
import 'package:tanta_task_app/Screens/History/history.dart';
import 'package:tanta_task_app/Screens/Home/homepage.dart';
import 'package:tanta_task_app/Screens/ManpowerProfile/manpower_profile.dart';
import 'package:tanta_task_app/Screens/Messages/messages.dart';
import 'package:tanta_task_app/Screens/Notifications/notifications.dart';
import 'package:tanta_task_app/Screens/Post_New_Jop/post_new_jop.dart';
import 'package:tanta_task_app/Screens/Profile/profile.dart';
import 'package:tanta_task_app/Screens/Settings/settings.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  PostNewJopScreen.routeName: (context) => PostNewJopScreen(),
  HistoryScreen.routeName: (context) => HistoryScreen(),
  MessagesScreens.routeName: (context) => MessagesScreens(),
  NotificationsScreen.routeName: (context) => NotificationsScreen(),
  SettingsScreen.routeName: (context) => SettingsScreen(),
  FavoriteScreen.routeName: (context) => FavoriteScreen(),
  ClientJopsScreen.routeName: (context) => ClientJopsScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ManPowerProfile.routeName: (context) => ManPowerProfile(),
};
