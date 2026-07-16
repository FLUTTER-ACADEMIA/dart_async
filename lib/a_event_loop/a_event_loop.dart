import 'dart:async';

void main() {
  // // Registra na fial de eventos do Dart
  // Timer.run(() {});

  // // Registra na fila de microtasks do Dart
  // scheduleMicrotask(() => print(''));
  print('Início main');
  Timer.run(() {
    print('Event 1');
    scheduleMicrotask(() => print('Nova Microtask 3'));
    print('Event 4');
  });
  Timer.run(() => print('Event 2'));
  Timer.run(() => print('Event 3'));

  scheduleMicrotask(() => print('Microtask 1'));
  scheduleMicrotask(() => print('Microtask 2'));
  print('Final main');
}
