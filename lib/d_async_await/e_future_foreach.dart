Future<void> main() async {
  print('INICIO...');
  final nomes = ['Renato', 'Neide', 'Divino', 'Neuza'];

  // nao utilizar
  // nomes.forEach(tratarSaudacao);

  // resolve mais nao esta realizando as operacoes em paralelo
  // for (var nome in nomes) {
  //   await tratarSaudacao(nome);
  // }

  //
  // await Future.forEach<String>(nomes, (nome) async {
  //   await tratarSaudacao(nome);
  // });

  final nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();

  final nomesProcessados = await Future.wait(nomesFuturo);

  print(nomesProcessados);

  print('FINAL...');
}

Future<void> tratarSaudacao(String nome) async {
  final saudacaoNome = await saudacao(nome);
  print(saudacaoNome);
}

Future<String> saudacao(String nome) async {
  print('Inicio saudacao $nome');

  return Future.delayed(Duration(seconds: 1), () {
    print('Fim saudacao $nome');
    return 'Olá $nome';
  });
}
