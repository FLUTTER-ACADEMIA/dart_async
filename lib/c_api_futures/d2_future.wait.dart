void main() {
  print('Init Main');

  var f1 = Future.delayed(Duration(seconds: 1), () => 'f1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'f2');
  var f3 = Future.delayed(Duration(seconds: 3), () => 'f3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'f4');
  var f5 = Future.delayed(
    Duration(seconds: 1),
    () => Future.error('Erro no f5'),
  );

  print(DateTime.now().toIso8601String());

  Future.wait(
        [f1, f2, f3, f4, f5],
        eagerError:
            true, // Se true, a Future retornada falhará assim que qualquer uma das futures falhar, sem esperar pelas outras.
        cleanUp: (successValue) {
          // Recebe os valores de sucesso das futures na ordem em que foram concluidas,
          //mesmo que uma delas tenha falhado. Isso permite que você faça algum tipo
          //de limpeza ou log dos resultados antes de lidar com o erro.
          print('CleanUp: $successValue');
        },
      )
      .then((arrayValues) {
        print(DateTime.now().toIso8601String());
        print(arrayValues[0]);
        print(arrayValues[1]);
        print(arrayValues[2]);
        print(arrayValues[3]);
        print('Valores: $arrayValues');
      })
      .catchError((error) {
        print(DateTime.now().toIso8601String());
        print('Erro: $error');
      });

  print('Fim Main');
}
