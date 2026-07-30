//*****************************************************************************/
// TAKE: REALIZA UMA TRANSFORMAÇÃO NA STREAM.
// TAKE: FINALIZA A STREAM - CRIA UM LIMITE PARA A STREAM E DEPOIS MATA ELA.
//*****************************************************************************/

Future<void> main() async {
  print('Inicio...');
  final interval = Duration(seconds: 2);

  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);

  // await for
  await for (var i in stream) {
    print(i);
  }

  print('Fim...');
}

int callback(int value) {
  return (value + 1) * 2;
}
