import 'package:flutter/material.dart';
import 'package:manabie_example/constant.dart';

class BoxItem extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final int couter;
  final int position;

  const BoxItem({
    Key key,
    this.width,
    this.height,
    this.color,
    this.couter,
    this.position,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Center(
        child: Text(
          couter.toString(),
          style: TextStyle(fontSize: countSize),
        ),
      ),
    );
  }
}
