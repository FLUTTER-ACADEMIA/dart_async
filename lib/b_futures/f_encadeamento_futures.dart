void main() {
  func1().then((value) {
    func2(value).then((value) => print(value));
  });
  // Promisses
  func1().then((value) => func2(value)).then((value) => print('2: $value'));

  var fut1 = func1();
  var fut2 = fut1.then((value) => func2(value));
  fut2.then((value) => print('3: $value'));
}

Future<String> func1() {
  return Future.delayed(Duration(seconds: 1), () => 'Parametro 1');
}

Future<String> func2(String param) {
  return Future.value('Parametro recebido e processado - $param');
}
