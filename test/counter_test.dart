import 'package:flutter_test/flutter_test.dart';
import 'package:manabie_example/app_state.dart';

void main() {
  test("Counter will change when click detail box", () {
    int _boxPosition = 0;
    AppState _appState = AppState(_boxPosition);
    _appState.increaseCounter(_boxPosition);
    expect(_appState.getboxData()[_boxPosition].count, 1);
  });
}
