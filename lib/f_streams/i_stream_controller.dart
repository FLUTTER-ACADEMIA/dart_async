import 'dart:async';

Future<void> main() async {
  print('Inicio...');

  final controller = StreamController<int>.broadcast();

  final inStream = controller.sink; // porta de entrada da Stream
  final outStream = controller.stream; // porta de saída da Stream

  outStream
      .skip(1)
      .where((numero) => numero % 2 == 0)
      .map((numero) => 'O valor par enviado é $numero')
      .listen((strConvetida) {
        print('String recebida');
        print(strConvetida);
      });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando número: $numero');
    inStream.add(numero);
    await Future.delayed(Duration(milliseconds: 500));
  }

  print('Final...');
  await controller.close();
}
