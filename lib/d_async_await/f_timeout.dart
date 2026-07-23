import 'dart:async';

void main() {
  final aguardando = inseringoAlgoBemLento();

  print(DateTime.now().toIso8601String());

  // aguardando
  //     .timeout(
  //       Duration(seconds: 1),
  //       onTimeout: () {
  //         print('Terminou o timeout...');
  //       },
  //     )
  //     .then((value) {
  //       print('Terminou o timeout');
  //     })
  //     .catchError((erro) {
  //       print('Terminou com erro: $erro');
  //     });
  try {
    final aguardando = inseringoAlgoBemLento().timeout(Duration(seconds: 1));
  } on TimeoutException catch (e) {
    print('Finalizou com timeout: $e');
  }
}

Future<void> inseringoAlgoBemLento() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Terminou o insert');
    print(DateTime.now().toIso8601String());
  });
}
