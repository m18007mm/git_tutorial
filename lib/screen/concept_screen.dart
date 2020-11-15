// TODO: とにかく実装
import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

void main() {
  runApp(
    MaterialApp(
      home: Concept_screen(),
    ),
  );
}

class Concept_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('平方完成'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '平方完成の概念理解',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'グラフ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  color: Colors.red,
                )
              ],
            ),
            TeXView(
              renderingEngine: TeXViewRenderingEngine.katex(),
              child: TeXViewDocument(
                r"""<p> 
                            平方完成とは二次関数\(y = ax^2 + bx + c \)を\(y = a(x - p)^2 + q\)の形に変形することである．
                            <div style="padding:15px 30px;background-color:#EDF7FF;">
                              <h4>平方完成の方法．</h4>
                              <ol>
                                <li>\(x\)を含む項だけ，\(x^2\)でくくる</li>
                                <li>\(x\)の係数を半分にして，その２乗を引く</li>
                                <li>因数分解する．</li>
                                <li>分配法則を用いる</li>
                                <li>定数項を計算する</li>
                              </ol>   
                            </div>
                            <div style="padding-top:15px;">
                              平方完成したときの頂点の座標および軸の方程式は
                              <div style="background-color:#EDF7FF;padding:15px 30px;" >
                                  頂点の座標：\((p, q)\)<br>
                                  軸の方程式：\(x = p\) 
                              </div>
                            </div>
                           </p>""",
              ),
              style: TeXViewStyle.fromCSS(
                  'padding: 30px; color: black; background: white;'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/concept_4.png'),
              ),
            ),
            Text(
              '平方完成のイメージ',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage('images/concept_6.png'),
              ),
            ),
            Text(
              '二次関数の係数を変えた時のイメージ',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
