Future<void> main() async {
  print('Inicio...');
  final interval = Duration(seconds: 1);

  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.where((numero) => numero % 6 == 0).take(3);

  stream.listen((numero) {
    print('Listen Value: $numero');
  });

  print('Fim...');
}

int callback(int value) {
  print('Valor que chegou no callback: $value');
  return (value + 1) * 2;
}
