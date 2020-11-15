import 'package:benesse_project_demo/screen/concept_screen.dart';
import 'package:benesse_project_demo/screen/formula_screen.dart';
import 'package:flutter/material.dart';
import 'main_screen.dart';

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
              SizedBox(
                height: 10.0,
              ),
              ButtonTheme(
                minWidth: 600.0,
                height: 50.0,
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  elevation: 18.0,
                  child: const Text('公式集'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white),
                  ),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Formula_screen();
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              ButtonTheme(
                minWidth: 600.0,
                height: 50.0,
                child: RaisedButton(
                  elevation: 10.0,
                  child: const Text('解の公式'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue),
                  ),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              ButtonTheme(
                minWidth: 600.0,
                height: 50.0,
                child: RaisedButton(
                  elevation: 10.0,
                  child: const Text('判別式'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue),
                  ),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              ButtonTheme(
                minWidth: 600.0,
                height: 50.0,
                child: RaisedButton(
                  elevation: 10.0,
                  child: const Text('平方完成'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue),
                  ),
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
              SizedBox(
                height: 50.0,
              ),
              ButtonTheme(
                minWidth: 600.0,
                height: 50.0,
                child: RaisedButton(
                  elevation: 10.0,
                  child: const Text('最大最小'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue),
                  ),
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
