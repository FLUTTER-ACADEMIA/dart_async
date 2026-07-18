void main() {
  print('Init Main');

  Future<String>(() => 'Future Normal').then(print);
  Future<String>.microtask(
    () => Future.error('Erro ao executar'), //'Future Microtask',
  ).then(print).catchError((e) => print('Erro: $e'));

  print('Fim Main');
}
