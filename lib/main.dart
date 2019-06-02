import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:manabie_example/app_state.dart';
import 'package:manabie_example/widget/box_detail_widget.dart';
import 'package:manabie_example/widget/box_list_widget.dart';
import 'package:provider/provider.dart';
import 'models/box.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      home: ChangeNotifierProvider<AppState>(
        builder: (_) => AppState(0),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Box> boxItems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30.0),
        child: Column(
          children: <Widget>[
            BoxListWidget(),
            BoxDetailWidget(),
          ],
        ),
      ),
    );
  }
}
