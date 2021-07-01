import 'dart:io';

void main(List<String> args) async {
  while (true) {
    await Socket.connect('localhost', 8000).then((Socket socket) {
      stdout.write('Write u message > ');
      String? msg = stdin.readLineSync();
      socket.write(msg ?? '');
    });
  }
}
