import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  //[PT-BR] Cria um socket com ip 127.0.0.1 ou localhost na porta 8000
  //[EN-US] Create a socket with ip 127.0.0.1 or localhost on port 8000
  ServerSocket serverSocket = await ServerSocket.bind('localhost', 8000);

  //[PT-BR] Faz o socket ficar escutando qualquer coisa que chegar e depois da um print no dado que chegou
  //[EN-US] Makes the socket listen for anything that arrives and then prints the incoming data
  serverSocket.listen((Socket socket) {
    utf8.decoder.bind(socket).listen((data) {
      print(data);
    });
  });
}
