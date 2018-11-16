library flutter_bingmaps;

import 'package:flutter/widgets.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class BingMap extends StatefulWidget {
  final String _key;

  BingMap(this._key);

  @override
  _BingMapState createState() => new _BingMapState(this._key);
}

class _BingMapState extends State<BingMap> {
  final String _key;

  FlutterWebviewPlugin flutterWebviewPlugin = new FlutterWebviewPlugin();

  _BingMapState(this._key);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    flutterWebviewPlugin.launch(
      this._getUrl(),
      withJavascript: true,
      enableAppScheme: true,
    );
    return new SizedBox();
  }

  _getUrl() {
    return Uri.dataFromString(
            "<html>"
            "<head>"
            "<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>"
            "<script type='text/javascript' src='http://www.bing.com/api/maps/mapcontrol?branch=release'></script>"
            "<script type='text/javascript'>function loadMapScenario(key){new Microsoft.Maps.Map(document.getElementById('myMap'), {    credentials: `${this._key}`    });}</script>"
            "</head>"
            "<body onload='loadMapScenario();' style='margin: 0px'>"
            "<div id='myMap' style='width: 100vw; height: 100vh;'></div>"
            "</body>"
            "</html>",
            mimeType: 'text/html')
        .toString();
  }
}
