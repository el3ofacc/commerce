import 'package:flutter/material.dart';

class Changepage extends ChangeNotifier {
  int oldindex = 0;
  int pagecontrol = 0;
  PageController pageController = PageController();
  changeindex(
    newindex,
  ) {
    oldindex = newindex;
    pagecontrol = newindex;

    notifyListeners();
  }

  increasindex() {
    oldindex++;
    pageController.animateToPage(oldindex,
        duration: Duration(milliseconds: 300),curve: Curves.easeIn);
    notifyListeners();
  }
}
