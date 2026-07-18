void main() {
  print('Init Main');

  Future<String>.sync(() {
    // SYNC: A função é executada imediatamente, e o resultado é retornado como um Future.
    // Não espera o próximo ciclo de eventos, mas ainda assim retorna um Future.
    print('Função executada');
    return 'Resultado Future';
  }).then(print);

  print('Fim Main');
}
