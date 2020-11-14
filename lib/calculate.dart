import 'dart:math';

makeList(int a, int b, int c) {
  var list_x = [];
  var list_y = [];
  var list = [];
  double n = 0.1;
  for (int i = 0; i < 100; i++) {
    list_x.add(i * n - 5);
    list_y.add(a * pow(list_x[i], 2) + b * list_x[i] + c);
    list.add([list_x[i], list_y[i]]);
  }
  return list;
}

void main() {
  var point = [];
  point = makeList(1, 1, 1);
  print(point);
}
