void main() {
  final totalAlunos = buscarTotalAlunos();

  totalAlunos.then((totalDeAlunos) {
    print('O total de alunos é $totalDeAlunos');
  });

  print('Resposta: $totalAlunos');
}

Future<int> buscarTotalAlunos() async {
  print('Esse ponto do método é sincrono');
  final buscandoTotalAlunos = await Future.value(887);

  print('Esse ponto do método é depois do Await');

  return buscandoTotalAlunos;
}
