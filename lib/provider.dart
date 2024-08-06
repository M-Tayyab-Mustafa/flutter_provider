import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color color = Colors.amber;

  changeColor() {
    if (color == Colors.amber) {
      color = Colors.black;
    } else {
      color = Colors.amber;
    }
    notifyListeners();
  }
}
