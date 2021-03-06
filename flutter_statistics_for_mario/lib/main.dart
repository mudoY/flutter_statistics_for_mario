import 'package:flutter/material.dart';
import 'package:flutter_statistics_for_mario/modules/home.dart';
import 'modules/page_add_detail.dart';
import 'modules/page_detail.dart';

void main() => runApp(new StatisticsApp());

class StatisticsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePage(), // TODO 从splash页面中跳转进入
      routes: <String,WidgetBuilder>{
        "/detail":(BuildContext context) => new DetailPage(),
        "/addDetail":(BuildContext context) => new AddDetailPage(),
      },
    );
  }
}

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => new _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text("Welcome!"),
    );
  }
}
