import 'dart:math';

void main() {
  var list_x = [];
  var list_y = [];
  var list = [];
  double n = 0.1;
  for (int i = 0; i < 100; i++) {
    list_x.add(i * n - 5);
  }
  for (int i = 0; i < list_x.length; i++) {
    list_y.add(pow(list_x[i], 2) + 2);
  }
  for (int i = 0; i < list_x.length; i++) {
    list.add([list_x[i], list_y[i]]);
  }
//   print(list_x);
//   print(list_y);
  print(list[0][0]);
  print(list[0][1]);
  print(list);
}
// List a=[];
// for (int i = 0; i < 10; i++){
//     list.add(i);
// }
