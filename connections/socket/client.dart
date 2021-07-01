import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  //[PT-BR] Cria um socket client que se conecta no ip e porta do servidor
  Socket socketClient = await Socket.connect('localhost', 8000);

  while (true) {
    stdout.write('Write u message > ');
    String msg = stdin.readLineSync() ?? '';

    //[PT-BR] Pega os bytes da mensagem e entrega para o socket
    List<int> msgBytes = utf8.encode(msg);
    socketClient.add(msgBytes);
  }
}
