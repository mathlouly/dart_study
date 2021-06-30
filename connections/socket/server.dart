import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  await ServerSocket.bind('localhost', 8000).then((ServerSocket serverSocket) {
    print('Server start!');
    serverSocket.listen((Socket socket) {
      utf8.decoder.bind(socket).listen((dataDecoder) {
        print('Message Client: ${dataDecoder}');
      });
    });
  });
}
