import 'package:flutter/material.dart';
import 'main_screen.dart';

class Setting extends StatefulWidget {
  @override
  SettingState createState() => SettingState();
}
//上手くカラー変更のwidgetが移動できず、settingは未完了
class SettingState extends State<Setting> {
  String cityName;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var _primarySwatch = Colors.blue;
  var _isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar Widget',
      theme: ThemeData(
        primarySwatch: _primarySwatch,
        brightness: _isDark ? Brightness.dark : Brightness.light,
      ),
      home: Builder(
        builder: (context) {
          return Scaffold(
            key: _scaffoldKey,
            appBar: AppBar(
              title: const Text('はたらくかんすう'),
              centerTitle: true,
            ),
          );
        },
      ),
    );

  }

}