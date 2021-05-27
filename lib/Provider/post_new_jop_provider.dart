import 'package:flutter/material.dart';
import 'package:tanta_task_app/enums.dart';

class PostNewJopProvider extends ChangeNotifier {
  bool isSearch;
  PostNewJopProvider() {
    isSearch = false;
  }

  void changeisSerach() {
    isSearch = true;
    notifyListeners();
  }
}
