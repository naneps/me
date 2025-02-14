import 'package:flutter/material.dart';

class CoreProvider extends ChangeNotifier {
  int _currentIndex = 0;
  bool _isChatOpen = false;

  int get currentIndex => _currentIndex;
  bool get isChatOpen => _isChatOpen;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void toggleChat() {
    _isChatOpen = !_isChatOpen;
    notifyListeners();
  }
}
