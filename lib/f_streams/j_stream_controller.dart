import 'dart:async';

Future<void> main() async {
  print('Inicio...');

  final controller = StreamController<Pessoa>.broadcast();

  final inStream = controller.sink; // porta de entrada da Stream
  final outStream = controller.stream; // porta de saída da Stream

  outStream.listen((pessoa) {
    print('Seja bem vindo ${pessoa.nome}');
  });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando número: $numero');
    inStream.add(Pessoa(nome: 'Renato Alves $numero'));
    await Future.delayed(Duration(milliseconds: 500));
  }

  print('Final...');
  await controller.close();
}

class Pessoa {
  String nome;
  Pessoa({required this.nome});
}
