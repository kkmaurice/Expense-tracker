import 'dart:io';

void main(List<String> args) {
  stdout.write('How many fibonacci numbers do you want to generate?\n');
  int number = int.parse(stdin.readLineSync()!);
  var fib =fibonacciNum(number);
  print(fib);
}

List<int> fibonacciNum(int fibNum){
  List<int> a = [1, 1];
  for(var i=0;i<fibNum;i++){
    a.add(a[i] + a[i+1]);
  }
  return a;
}