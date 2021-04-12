import 'package:flutter/material.dart';

class BottomNavigateModel extends ChangeNotifier {
  void _onItemTapped(int index) {
    _selectedIndex = index;
  }

  int _selectedIndex = 0;

  // getterとsetterを指定しています
  // setのときにnotifyListeners()を呼ぶことアイコンタップと同時に画面を更新しています。
  get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners(); // View側に変更を通知
  }
}
