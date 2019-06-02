import 'package:flutter/material.dart';
import 'package:manabie_example/app_state.dart';
import 'package:manabie_example/models/box.dart';
import 'package:manabie_example/widget/box_item.dart';
import 'package:provider/provider.dart';
import 'package:manabie_example/constant.dart';

class BoxListWidget extends StatefulWidget {
  @override
  _BoxListWidgetState createState() => _BoxListWidgetState();
}

class _BoxListWidgetState extends State<BoxListWidget> {
  @override
  Widget build(BuildContext context) {
    print("list widget");
    return Container(
      height: boxListSize,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: _boxItemSection(context),
      ),
    );
  }

  List<Widget> _boxItemSection(BuildContext context) {
    final _appState = Provider.of<AppState>(context);
    List<Box> _boxItemDatas = _appState.getboxData();
    return List<Widget>.generate(_boxItemDatas.length, (int index) {
      return Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
          GestureDetector(
            onTap: () {
              _appState.setBoxPosition(index);
            },
            child: BoxItem(
              position: _appState.getBoxPosition(),
              width: boxListSize,
              color: _boxItemDatas[index].color,
              couter: _boxItemDatas[index].count,
            ),
          ),
        ],
      );
    });
  }
}
