import 'dart:io';

void main(List<String> args) async {
  while (true) {
    await WebSocket.connect('ws://localhost:8000').then((WebSocket socket) {
      socket.listen((data) => print(data));

      stdout.write('Write u message > ');
      String? msg = stdin.readLineSync();
      socket.add(msg);
    });
  }
}
