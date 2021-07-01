import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  //[PT-BR] Cria um socket com ip 127.0.0.1 ou localhost na porta 8000
  ServerSocket serverSocket = await ServerSocket.bind('localhost', 8000);

  //[PT-BR] Faz o socket ficar escutando qualquer coisa que chegar e depois da um print no dado que chegou
  serverSocket.listen((Socket socket) {
    utf8.decoder.bind(socket).listen((data) {
      print(data);
    });
  });
}
