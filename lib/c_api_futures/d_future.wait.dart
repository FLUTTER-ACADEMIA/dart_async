void main() {
  print('Init Main');

  var f1 = Future.delayed(Duration(seconds: 1), () => 'f1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'f2');
  var f3 = Future.delayed(Duration(seconds: 1), () => 'f3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'f4');
  var f5 = Future.delayed(
    Duration(seconds: 1),
    () => Future.error('Erro no f5'),
  );

  print(DateTime.now().toIso8601String());

  Future.wait([f1, f2, f3, f4, f5])
      .then((arrayValues) {
        print(DateTime.now().toIso8601String());
        print(arrayValues[0]);
        print(arrayValues[1]);
        print(arrayValues[2]);
        print(arrayValues[3]);
        print('Valores: $arrayValues');
      })
      .catchError((error) {
        print(DateTime.now().toIso8601String());
        print('Erro: $error');
      });

  print('Fim Main');
}
