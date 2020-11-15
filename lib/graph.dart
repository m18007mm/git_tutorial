import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_plot/flutter_plot.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  makeList(int a1, int b1, int c1) {
    List list_x = [];
    List list_y = [];
    List list = [];
    List<Point> data = [];
    double n = 0.1;
    for (int i = 0; i < 100; i++) {
      list_x.add(i * n - 5);
      list_y.add(a1 * pow(list_x[i], 2) + b1 * list_x[i] + c1);
      list.add([list_x[i], list_y[i]]);
      double x = list_x[i];
      double y = list_y[i];
      data.add(Point(x, y));
    }
    return data;
  }

  final _formKey = GlobalKey<FormState>();

  // フォーカス管理用のFocusNode
  final a_focus = FocusNode();
  final b_focus = FocusNode();
  final c_focus = FocusNode();

  // デモ用の適当な変数
  var your_a = 1;
  var your_b = 1;
  var your_c = 1;

  // 名前更新用メソッド
  void _updateA(int a) {
    setState(() {
      your_a = a;
    });
  }

  // 年齢更新用メソッド
  void _updateB(int b) {
    setState(() {
      your_b = b;
    });
  }

  void _updateC(int c) {
    setState(() {
      your_c = c;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter plot'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: new Text('Super Neat Plot'),
                ),
                new Container(
                  child: new Plot(
                    height: 200.0,
                    data: makeList(your_a, your_b, your_c),
                    gridSize: new Offset(2.0, 2.0),
                    style: new PlotStyle(
                      axisStrokeWidth: 2.0,
                      pointRadius: 3.0,
                      outlineRadius: 1.0,
                      primary: Colors.yellow,
                      secondary: Colors.red,
                      trace: true,
                      traceStokeWidth: 3.0,
                      traceColor: Colors.blueGrey,
                      traceClose: true,
                      showCoordinates: true,
                      textStyle: new TextStyle(
                        fontSize: 8.0,
                        color: Colors.grey,
                      ),
                      axis: Colors.blueGrey[600],
                      gridline: Colors.blueGrey[100],
                    ),
                    padding: const EdgeInsets.fromLTRB(40.0, 12.0, 12.0, 40.0),
                    //xTitle: 'My X Title',
                    //yTitle: 'My Y Title',
                  ),
                ),
                new Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.number,
                          // ここでは使用しないが、コントローラももちろん使用可能
                          // controller: _nameController,
                          // テキスト入力完了して決定時のボタンの見た目等指定。後述。
                          textInputAction: TextInputAction.next,

                          // フォームを含むウィジェットが作成された時点でフォーカスする。
                          autofocus: true,

                          focusNode: a_focus,
                          onFieldSubmitted: (v) {
                            // フォーム入力完了後、agefocusにフォーカスを移す。
                            // すなわち年齢入力フォームにフォーカスを移動する。
                            // agefocusは作成済のFocusNode
                            FocusScope.of(context).requestFocus(b_focus);
                          },
                          // 入力内容に対するバリデーション
                          validator: (value) {
                            // 入力内容が空でないかチェック
                            if (value.isEmpty) {
                              return '数値を入力してください。';
                            }
                          },
                          // _formKey.currentState.save() 呼び出し時に実行する処理
                          onSaved: (value) {
                            _updateA(int.parse(value));
                          },
                        ),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          // ここでは使用しないが、コントローラももちろん使用可能
                          // controller: _nameController,
                          // テキスト入力完了して決定時のボタンの見た目等指定。後述。
                          textInputAction: TextInputAction.next,

                          // フォームを含むウィジェットが作成された時点でフォーカスする。
                          autofocus: true,

                          focusNode: b_focus,
                          onFieldSubmitted: (v) {
                            // フォーム入力完了後、agefocusにフォーカスを移す。
                            // すなわち年齢入力フォームにフォーカスを移動する。
                            // agefocusは作成済のFocusNode
                            FocusScope.of(context).requestFocus(c_focus);
                          },
                          // 入力内容に対するバリデーション
                          validator: (value) {
                            // 入力内容が空でないかチェック
                            if (value.isEmpty) {
                              return '数値を入力してください。';
                            }
                          },
                          // _formKey.currentState.save() 呼び出し時に実行する処理
                          onSaved: (value) {
                            _updateB(int.parse(value));
                          },
                        ),
                        TextFormField(
                          // キーボードタイプを指定。ここではnumberを指定しており、数字キーボードを表示
                          // 一覧はhttps://api.flutter.dev/flutter/services/TextInputType-class.html
                          keyboardType: TextInputType.number,
                          // テキスト入力完了時の動作、ボタン見た目の指定
                          textInputAction: TextInputAction.done,
                          focusNode: c_focus,
                          onFieldSubmitted: (v) {
                            // 年齢フォームからフォーカスを外し、キーボードをしまう
                            c_focus.unfocus();
                          },
                          // フォームの装飾を定義
                          onSaved: (value) {
                            _updateC(int.parse(value));
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: RaisedButton(
                            // 送信ボタンクリック時の処理
                            onPressed: () {
                              // バリデーションチェック
                              if (_formKey.currentState.validate()) {
                                // 各フォームのonSavedに記述した処理を実行
                                // このsave()を呼び出さないと、onSavedは実行されないので注意
                                _formKey.currentState.save();
                                Scaffold.of(context).showSnackBar(
                                    SnackBar(content: Text('更新しました。')));
                              }
                              setState(() {
                                makeList(your_a, your_b, your_c);
                              });
                            },
                            child: Text('送信する'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
