import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  SettingState createState() => SettingState();
}

class SettingState extends State<Setting> {
  String cityName;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
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