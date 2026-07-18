void main() {
  Future(() {
    return 'Valor X';
  }); // -> Incompleto ainda vai ser executado!!

  Future.value(''); // -> Sucesso, já retorna o valor
  Future.error(''); // -> Erro, já retorna o erro
}

Future<String> func1() {
  return Future.value('Valor Y');
}
