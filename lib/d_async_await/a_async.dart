void main() {
  final nome = metodoAssincronoSemAsync();
  final nome2 = metodoAssincrono();
  print(nome2);

  nome.then(print).catchError(print);

  medotoAssincronoVoid().whenComplete(() => print('Finalizou o void'));
}

Future<String> metodoAssincronoSemAsync() {
  return Future.value('Renato');
}

Future<String> metodoAssincrono() async {
  return 'Renato';
}

Future<void> medotoAssincronoVoid() async {}
