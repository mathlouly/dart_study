import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  //[PT-BR] Cria um socket client que se conecta no ip e porta do servidor
  //[EN-US] Create a socket client that connects to the server's ip and port
  Socket socketClient = await Socket.connect('localhost', 8000);

  while (true) {
    stdout.write('Write u message > ');
    String msg = stdin.readLineSync() ?? '';

    //[PT-BR] Pega os bytes da mensagem e entrega para o socket
    //[EN-US] Takes the bytes of the message and delivers it to the socket
    List<int> msgBytes = utf8.encode(msg);
    socketClient.add(msgBytes);
  }
}
