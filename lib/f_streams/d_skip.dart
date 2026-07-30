Future<void> main() async {
  print('Inicio...');
  final interval = Duration(seconds: 1);

  var stream = Stream<int>.periodic(interval, callback);

  // skip(2) pula os dois primeiros
  stream = stream.take(5).skip(2);

  print('passou aqui');

  // await for
  await for (var i in stream) {
    print('O número que chegou no await for $i');
  }

  print('Fim...');
}

int callback(int value) {
  print('Valor: $value');
  return (value + 1) * 2;
}
