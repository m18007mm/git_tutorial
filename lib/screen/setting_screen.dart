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
              actions: [
                IconButton(
                  icon: Icon(Icons.undo),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.redo),
                  onPressed: () {},
                )
              ],
            ),
          );
        },
      ),
    );

  }


//weather
// import 'package:clima/utilities/constants.dart';
// import 'package:clima/services/weather.dart';
//
// class LocationScreen extends StatefulWidget {
//   LocationScreen({this.locationWeather});
//
//   final locationWeather;
//
//   @override
//   _LocationScreenState createState() => _LocationScreenState();
// }
//
// class _LocationScreenState extends State<LocationScreen> {
//   WeatherModel weather = WeatherModel();
//   int temperature;
//   String weatherIcon;
//   @override
//   void initState() {
//     super.initState();
//
//     updateUI(widget.locationWeather);
//   }
//
//   void updateUI(dynamic weatherData) {
//     setState(() {
//       if (weatherData == null) {
//         temperature = 0;
//         weatherIcon = 'Error';
//         return;
//       }
//       double temp = weatherData['main']['temp'];
//       temperature = temp.toInt();
//       var condition = weatherData['weather'][0]['id'];
//       weatherIcon = weather.getWeatherIcon(condition);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('images/location_background.jpg'),
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//                 Colors.white.withOpacity(0.8), BlendMode.dstATop),
//           ),
//         ),
//         constraints: BoxConstraints.expand(),
//         child: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//
//               Padding(
//                 padding: EdgeInsets.only(left: 15.0),
//                 child: Row(
//                   children: <Widget>[
//                     Text(
//                       '$temperature°',
//                       style: kTempTextStyle,
//                     ),
//                     Text(
//                       weatherIcon,
//                       style: kConditionTextStyle,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// 
}