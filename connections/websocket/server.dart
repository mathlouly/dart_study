import 'dart:io';

void main(List<String> args) async {
  await HttpServer.bind('localhost', 8000).then((HttpServer server) {
    server.listen((HttpRequest request) async {
      await WebSocketTransformer.upgrade(request).then((WebSocket socket) {
        socket.listen((data) {
          socket.add(data);
          print(data);
        });
      });
    });
  }, onError: (e) => print(e));
}
