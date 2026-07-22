Future<void> main() async {
  try {
    print('inicio');
    final id = await buscarId();

    final nome = await buscarNome(id);
    print('O nome é $nome');

    print('fim');
  } catch (e) {
    print('Aconteceu um erro!!!');
  }
  //
  // print('inicio');
  // final id = await buscarId();

  // final nome = await buscarNome(id).catchError((erro) {
  //   print('Aconteceu um problema!!');
  //   return 'Outro nome';
  // });
  // print('O nome é $nome');

  // print('fim');
}

Future<int> buscarId() async => 80;

Future<String> buscarNome(int id) async {
  throw Exception();
  // return 'Renato Alves ($id)';
}
