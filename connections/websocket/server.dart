import 'dart:io';

void main(List<String> args) async {
  await HttpServer.bind('localhost', 8000).then((HttpServer server) {
    server.listen((HttpRequest request) async {
      await WebSocketTransformer.upgrade(request).then((WebSocket socket) {
        socket.listen((data) {
          if (data == 'ola') socket.add('Olaaaa');
          print(data);
        });
      });
    });
  }, onError: (e) => print(e));
}
