import 'package:flutter/material.dart';
import 'package:flutter_bingmaps/flutter_bingmaps_plugin.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Bing Maps Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  get _getApiKey {
    return 'YourApiKey';
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new BingMap(_getApiKey),
    );
  }
}
