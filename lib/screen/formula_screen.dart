import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class Formula_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('二次関数　公式集'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '解の公式',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  '説明',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                color: Colors.blue,
                                child: Text('グラフ'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TeXView(
                        child: TeXViewDocument(
                          r"""<p> 
                          2次方程式\(ax^2 + bx + c = 0\)の解は
                          $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$  
                          b = 2b'のとき，
                          $$x = {-b' \pm \sqrt{b'^2-ac} \over a}$$                     
                         </p>""",
                          style: TeXViewStyle.fromCSS(
                              'padding: 15px; color: black; background: white'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '判別式',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  '説明',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                color: Colors.blue,
                                child: Text('グラフ'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TeXView(
                        child: TeXViewDocument(
                          r"""<p> 
                          2次関数\(y = ax^2 + bx + c\)のグラフと\(x\)の位置関係と，
                          判別式\(D = b^2 - 4ac\)について
                          $$
                          \begin{aligned}
                          D > 0 &\Leftrightarrow& 異なる２点で交わる \\
                          D = 0 &\Leftrightarrow& 1点で接する \\
                          D < 0 &\Leftrightarrow& 共有点を持たない \\
                          \end{aligned}
                          $$
                          </p>""",
                          style: TeXViewStyle.fromCSS(
                              'padding: 15px; color: black; background: white'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '平方完成',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  '説明',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                color: Colors.blue,
                                child: Text('グラフ'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TeXView(
                        child: TeXViewDocument(
                          r"""<p> 
                          二次関数\(y = ax^2 + bx + c\)は平方完成すると次の形になる．
                          $$y = a(x - p)^2 + q$$                          
                         </p>""",
                          style: TeXViewStyle.fromCSS(
                              'padding: 15px; color: black; background: white'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '平行移動',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  '説明',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RaisedButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(10.0),
                                color: Colors.blue,
                                child: Text('グラフ'),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TeXView(
                        child: TeXViewDocument(
                          r"""<p> 
                          平方完成して，\(y = a(x - p)^2 + q\)の形にする．                          
                         \(a < 0 \)のとき，\(x = p\)で最小値\(q\)，最大値はない
                         \(a > 0 \)のとき，\(x = p\)で最大値\(q\)，最小値はない
                         定義域に制限がある場合，グラフを利用する．</p>""",
                          style: TeXViewStyle.fromCSS(
                              'padding: 15px; color: black; background: white'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
