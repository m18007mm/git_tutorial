import 'package:benesse_project_demo/screen/concept_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Items_screen(),
    ),
  );
}

// TODO: UIを整える
class Items_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        //backgroundColor: Colors.blue,
        title: Text('二次関数'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              ButtonTheme(
                minWidth: 600.0,
                height: 50.0,
                child: FlatButton(
                    child: const Text('公式集'),
                    shape: const UnderlineInputBorder(),
                    color: Colors.white,
                    textColor: Colors.blue,
                    onPressed: () {}),
              ),
              ButtonTheme(
                minWidth: 600.0,
                height: 50.0,
                child: FlatButton(
                  child: const Text('解の公式'),
                  shape: const UnderlineInputBorder(),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Concept_screen();
                        },
                      ),
                    );
                  },
                ),
              ),
              ButtonTheme(
                minWidth: 600.0,
                height: 50.0,
                child: FlatButton(
                  child: const Text('判別式'),
                  shape: const UnderlineInputBorder(),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              ButtonTheme(
                minWidth: 600.0,
                height: 50.0,
                child: FlatButton(
                  child: const Text('平方完成'),
                  shape: const UnderlineInputBorder(),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              ButtonTheme(
                minWidth: 600.0,
                height: 50.0,
                child: FlatButton(
                  child: const Text('最大最小'),
                  shape: const UnderlineInputBorder(),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
