import 'package:flutter/material.dart';

class Navigation {
  void navigate(Widget Function () newpage,BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => newpage()));
  }
    void navigaterep(Widget Function()  newpage,BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>newpage()));
  }
}
