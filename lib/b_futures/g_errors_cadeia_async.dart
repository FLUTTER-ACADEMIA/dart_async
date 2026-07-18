void main() {
  func1()
      .then((value) => func2())
      .then(
        (value) => func3(),
        onError: (error) {
          print('Tratando erro na função 2');
          return func3();
        },
      )
      // .catchError((error) {
      //   print('Tratando erro na função 2');
      //   return 'Função 2';
      // })
      .then(print)
      .catchError((error) => print('Erro em alguma chamada.'));
}

Future<String> func1() {
  print('Func 1');
  return Future.value('Fazendo algo Func 1');
}

Future<String> func2() {
  print('Func 2');
  // throw Exception('Erro na Func 2');
  return Future.error('Erro na Func 2');
}

Future<String> func3() {
  print('Func 3');
  return Future.value('Fazendo algo Func 3');
}
