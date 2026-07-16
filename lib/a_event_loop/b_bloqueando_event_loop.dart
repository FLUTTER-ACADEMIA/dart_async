import 'dart:io';

void main() {
  print('Início main');
  print(temperaturaAtual());
  print(previsaoAmanha());
  print('Finalizando  main');
}

String temperaturaAtual() {
  sleep(Duration(seconds: 3));
  return 'Esta fazendo 30 graus';
}

String previsaoAmanha() {
  sleep(Duration(seconds: 4));
  return 'Amanhã vai fazer 32 graus';
}
