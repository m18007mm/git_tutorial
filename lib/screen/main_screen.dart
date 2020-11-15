import 'package:benesse_project_demo/screen/weather_screen.dart';
import 'package:flutter/material.dart';
import 'formula_screen.dart';
import 'setting_screen.dart';

void main() => runApp(math_app());

class math_app extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<math_app> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var _primarySwatch = Colors.blue;
  var _isDark = false;
  List<String> data = ['二次関数','最大最小','解の公式','Lorem','Lorem'];

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
              endDrawer: Drawer(
                child: ListView(
                  children: <Widget>[
                    DrawerHeader(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage('images/benesse.jpg'),
                          ),
                          Text(
                            'NAME',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: _primarySwatch,
                      ),
                    ),
                    ListTile(
                      title: Text('MyAccount'),
                      contentPadding: EdgeInsets.all(10.0),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text('weather'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LocationScreen();
                            },
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('setting'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Setting();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              body: GridView.count(


                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                padding: EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                children: List.generate(5, (index) {
                  return Container(


                    padding: const EdgeInsets.all(5.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: 2.0,
                          blurRadius: 8.0,
                          offset: Offset(8.0, 8.0),
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: _primarySwatch,
                    ),
                    child: GridTile(
                      child: FlatButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                      ),
                      footer: Center(
                        child: Text(data[index],
                        textAlign: TextAlign.center,),
                      ),
                    ),
                  );
                }),
              ),
              bottomNavigationBar: _buildSettings(context));
        },
      ),
    );
  }

  Widget _buildSettings(BuildContext context) {
    return Material(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Text('Primary Swatch'),
                const SizedBox(width: 16),
                Expanded(child: SizedBox(height: 56, child: _buildColors()))
              ],
            ),
            const Divider(),
            Row(
              children: [
                const Expanded(child: Text('Dark theme')),
                Switch(
                  value: _isDark,
                  onChanged: (value) => setState(() {
                    _isDark = value;
                  }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColors() {
    return Scrollbar(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Colors.primaries.length,
        itemBuilder: (_, index) {
          return Material(
            color: Colors.primaries[index][500],
            child: InkWell(
              child: Container(
                padding: const EdgeInsets.all(4),
                width: 56,
                color: Colors.transparent,
                child: _primarySwatch == Colors.primaries[index]
                    ? Icon(Icons.check, color: Colors.white)
                    : null,
              ),
              onTap: () {
                setState(() {
                  _primarySwatch = Colors.primaries[index];
                });
              },
            ),
          );
        },
      ),
    );
  }
}
