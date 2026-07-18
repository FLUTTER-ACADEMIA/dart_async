import 'dart:async';

Future<void> main() async {
  final usuario = UsuarioRepository();
  usuario.salvarComum(
    (sucesso) => print('Mensagem: $sucesso'),
    (erro) => print('Erro: $erro'),
  );

  try {
    final sucesso = await usuario.salvarCompleter();
    print('Sucesso completer: $sucesso');
  } catch (e) {
    print('Erro: $e');
  }
}

class UsuarioRepository {
  void salvarComum(
    void Function(String) callbackSuccess,
    void Function(String) callbackError,
  ) {
    Timer(Duration(seconds: 2), () {
      try {
        throw Exception('Erro ao salvar usuario!!');
        callbackSuccess('Usuario salvo com sucesso!!');
      } catch (e) {
        callbackError('Erro ao salvar usuario!!');
      }
    });
  }

  Future<String> salvarCompleter() {
    final completer = Completer<String>();

    Timer(Duration(seconds: 2), () {
      try {
        completer.complete('Usuario salvo com sucesso!!');
      } catch (e) {
        completer.completeError('Erro ao salvar usuario!!');
      }
    });

    return completer.future;
  }
}
