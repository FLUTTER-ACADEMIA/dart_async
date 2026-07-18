import 'dart:async';

Future<void> main() async {
  try {
    final mensagem = await buscarAlgo(1);
    print('Mensagem: $mensagem');
  } catch (e, s) {
    print('Erro: $e');
    print('Stack: $s');
  }
  // buscarAlgo(1)
  //     .then((value) => print('Mensagem: $value'))
  //     .catchError((error) => print('Erro: $error'));
}

Future<String> buscarAlgo(int numero) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if (numero == 0) {
      completer.complete('Número enviado com sucesso!!');
    } else {
      completer.completeError('Numero enviado com erro!!', StackTrace.current);
    }
  });

  return completer.future;
}
