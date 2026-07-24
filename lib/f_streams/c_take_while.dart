Future<void> main() async {
  print('Inicio...');
  final interval = Duration(seconds: 2);

  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.takeWhile((int numero) {
    print('O número que entrou no takewhile $numero');
    return numero <= 10;
  });

  // await for
  await for (var i in stream) {
    print('O número que chegou no await for $i');
  }

  print('Fim...');
}

int callback(int value) {
  return (value + 1) * 2;
}
