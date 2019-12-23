import 'package:flutter/material.dart';

class IndexState with ChangeNotifier {
  int currentIndex = 0;

  //修改bottomNavBar选中的index
  changeIndex(int index){
    currentIndex = index;
    notifyListeners();
  }
}