# Socket

## pt-br

Um socket ou soquete de rede é um ponto final de um fluxo de comunicação entre processos através de uma rede de computadores, o socket ele é unidirecional, logo o servidor não consegue enviar uma mensagem para o cliente.

Para utilizar um socket em dart é algo bem simples, primeiro você deve criar um socket server, pois é ele quem irá receber todo o fluxo de dados que for encaminhado pela rede destinado ao ip e porta que for estabelecida, conforme no exemplo [Server](https://github.com/mathlouly/dart_study/blob/main/connections/socket/server.dart).

Para enviar uma mensagem para o servidor pela rede, você precisa criar um cliente, onde esse cliente se conecta no ip e porta do server e adiciona os bytes da mensagem no socket e o socket toma conta de entregar esses bytes para o servidor conforme no exemplo [Client](https://github.com/mathlouly/dart_study/blob/main/connections/socket/client.dart). 

## en-us

A socket is an end point of a flow of communication between processes through a computer network, the socket is unidirectional, so the server cannot send a message to the client.

To use a socket in dart is something very simple, first you must create a socket server, as it will receive all the data stream that is forwarded by the network destined to the ip and port that is established, as in the example [Server](https://github.com/mathlouly/dart_study/blob/main/connections/socket/server.dart).

To send a message to the server over the network, you need to create a client, where this client connects to the server's ip and port and adds the bytes of the message to the socket and the socket takes care of delivering these bytes to the server as in the example [Client](https://github.com/mathlouly/dart_study/blob/main/connections/socket/client.dart).