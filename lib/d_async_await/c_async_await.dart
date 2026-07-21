Future<int> buscarId() async => 80;

Future<String> buscarNome(int id) async => 'Renato Alves ($id)';

Future<String> buscarNomeUsuario() {
  return buscarId().then((id) {
    return buscarNome(id).then((nome) {
      return 'Usuário: $nome';
    });
  });
}

Future<String> buscarNomeUsuarioAwait() async {
  final id = await buscarId();

  final nome = await buscarNome(id);

  return 'Usuário: $nome';
}

Future<void> main() async {
  // Quando é adicionado o Future<void> a main ele perde a prioridade no Event lool liberando ele para outras execuções
  print('Inicio');
  final nomeUsu = await buscarNomeUsuarioAwait();
  print(nomeUsu);
  print('Fim');
}
