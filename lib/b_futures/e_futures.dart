void main() {
  // Future<int>(() {
  //   return 10 ~/ 2;
  // }).then((value) {
  //   print('O valor do orçamento é: $value');
  // });

  // Future<int>(() {
  //       return 10 ~/ 0;
  //     })
  //     .then(
  //       (value) => print('O valor do orçamento é: $value'),
  //       onError: (error) {
  //         print('Deu ruim: $error');
  //         throw Exception('Erro no orçamento');
  //       },
  //     )
  //     .catchError((error) => print('Deu ruim2: $error'));

  Future<int>(() {
        throw Exception('Erro no orçamento');
        return 10 ~/ 0;
      })
      .then((value) {
        print('O valor do orçamento é: $value');
      })
      .catchError(
        (error) {
          print('Ocorreu um erro no CatchError: $error');
        },
        test: (error) => error is UnsupportedError,
      ); // se for false, o catchError não vai ser chamado, se for true, ele vai ser chamado
  //
  // print('Iniciando manutenção do carro...');
  // Future<int>(() {
  //   // Função assincrona que vai fazer a manutenção do carro
  //   return 10 ~/ 2;
  // }).then((valorOrcamento) {
  //   print('Orçamento do carro: $valorOrcamento');
  // });
  // print('Finalizando manutenção do carro...');

  // print('Fui viajar...');
  // Future<String>(() {
  //       // Indo para USA
  //       throw Exception('O avião caiu');
  //       return 'MacBook Comprado!';
  //     })
  //     .then((comprado) {
  //       print('Comprei meu MacBook');
  //     })
  //     .catchError((error) {
  //       print('Deu ruim o aviao caiu');
  //     })
  //     .whenComplete(() {
  //       print('Finalizando...');
  //     });
  // print('Voltando da viagem...');
}
