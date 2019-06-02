import 'package:flutter/material.dart';
import 'package:manabie_example/app_state.dart';
import 'package:manabie_example/widget/box_item.dart';
import 'package:provider/provider.dart';
import 'package:manabie_example/constant.dart';

class BoxDetailWidget extends StatefulWidget {
  @override
  _BoxDetailWidgetState createState() => _BoxDetailWidgetState();
}

class _BoxDetailWidgetState extends State<BoxDetailWidget> {
  @override
  Widget build(BuildContext context) {
    print("detail widget");
    final _appState = Provider.of<AppState>(context);
    return GestureDetector(
      onTap: () {
        _appState.increaseCounter(_appState.getBoxPosition());
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: BoxItem(
          position: _appState.getBoxPosition(),
          width: boxDetailSize,
          height: boxDetailSize,
          color: _appState.getboxData()[_appState.getBoxPosition()].color,
          couter: _appState.getboxData()[_appState.getBoxPosition()].count,
        ),
      ),
    );
  }
}
