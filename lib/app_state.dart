import 'package:flutter/material.dart';
import 'package:manabie_example/models/box.dart';
import 'package:random_color/random_color.dart';

class AppState extends ChangeNotifier {
  int _boxPosition;
  List<Box> _boxData = List.generate(10, (index) {
    return Box(RandomColor().randomColor(), 0);
  });

  AppState(this._boxPosition);

  getboxData() => _boxData;
  void increaseCounter(int position) {
    _boxData[position].count++;
    notifyListeners();
  }

  getBoxPosition() => _boxPosition;
  void setBoxPosition(int position) {
    _boxPosition = position;
    notifyListeners();
  }
}
