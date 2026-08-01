Future<void> main() async {
  print('Inicio...');
  final interval = Duration(seconds: 1);

  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.asBroadcastStream();

  stream = stream.take(10);

  stream.listen((numero) {
    print('Listen 1 Value: $numero');
  });

  stream.listen((numero) {
    print('Listen 2 Value: $numero');
  });

  print('Fim...');
}

int callback(int value) {
  print('Valor que chegou no callback: $value');
  return (value + 1) * 2;
}
