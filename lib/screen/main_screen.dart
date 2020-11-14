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
            endDrawer: Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('images/figure.png'),
                        ),
                        Text(
                          'Name',
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
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text('setting'),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
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

            body: _buildStyleList(context),
            bottomNavigationBar: _buildSettings(context),
          );
        },
      ),
    );
  }



  Widget _buildStyleList(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Divider(),
      ],
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

