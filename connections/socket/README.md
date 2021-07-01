# Socket

[![en](https://img.shields.io/badge/lang-en--us-red)](https://github.com/mathlouly/dart_study/blob/main/connections/socket/README.md)
[![pt-br](https://img.shields.io/badge/lang-pt--br-green)](https://github.com/mathlouly/dart_study/blob/main/connections/socket/README.pt-br.md)

A socket is an end point of a flow of communication between processes through a computer network, the socket is unidirectional, so the server cannot send a message to the client.

To use a socket in dart is something very simple, first you must create a socket server, as it will receive all the data stream that is forwarded by the network destined to the ip and port that is established, as in the example [Server](https://github.com/mathlouly/dart_study/blob/main/connections/socket/server.dart).

To send a message to the server over the network, you need to create a client, where this client connects to the server's ip and port and adds the bytes of the message to the socket and the socket takes care of delivering these bytes to the server as in the example [Client](https://github.com/mathlouly/dart_study/blob/main/connections/socket/client.dart).