import 'dart:async';

void main() {
  print('Início main');
  func1();
  func2();
  print('Finalizando  main');
}

void func1() {
  print('Início func1');
  // Timer.run(() {
  //   print('Fazendo algo demorado...Func1');
  // });
  Future.delayed(Duration(seconds: 2), () {
    print('Fazendo algo demorado...Func1');
  });
  print('Finalizando func1');
}

void func2() {
  print('Início func2');
  // Timer.run(() {
  //   print('Fazendo algo demorado...Func2');
  // });
  Future.delayed(Duration(seconds: 1), () {
    print('Fazendo algo demorado...Func2');
  });
  print('Finalizando func2');
}
