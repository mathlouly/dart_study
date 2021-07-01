# Soquete / Socket

[![en](https://img.shields.io/badge/lang-en--us-red)](https://github.com/mathlouly/dart_study/blob/main/connections/socket/README.md)
[![pt-br](https://img.shields.io/badge/lang-pt--br-green)](https://github.com/mathlouly/dart_study/blob/main/connections/socket/README.pt-br.md)

Um socket ou soquete de rede é um ponto final de um fluxo de comunicação entre processos através de uma rede de computadores, o socket ele é unidirecional, logo o servidor não consegue enviar uma mensagem para o cliente.

Para utilizar um socket em dart é algo bem simples, primeiro você deve criar um socket server, pois é ele quem irá receber todo o fluxo de dados que for encaminhado pela rede destinado ao ip e porta que for estabelecida, conforme no exemplo [Server](https://github.com/mathlouly/dart_study/blob/main/connections/socket/server.dart).

Para enviar uma mensagem para o servidor pela rede, você precisa criar um cliente, onde esse cliente se conecta no ip e porta do server e adiciona os bytes da mensagem no socket e o socket toma conta de entregar esses bytes para o servidor conforme no exemplo [Client](https://github.com/mathlouly/dart_study/blob/main/connections/socket/client.dart). 