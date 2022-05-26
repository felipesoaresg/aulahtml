import 'package:flutter/material.dart';

/*
Nós podemos receber os parametros de forma
dinamica!!
Primeiro, utilizamos a palavra chave "final"
Depois o tipo de dado: String, int, ...
Por ~ultimo o nome que queremos dar
final String nome;
 */

class Mycard extends StatelessWidget {
  const Mycard({
    Key? key,
    this.nome,
    this.email,
    this.telefone,
  }) : super(key: key);

  final String? nome;
  final String? email;
  final String? telefone;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        width: 300,
        height: 160,
        child: Column(children: [
          Row(children: [
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: 75,
                height: 75,
                child: Image.network(
                    'https://64.media.tumblr.com/22817bfe4d7c917e2db690922d652c0c/6d13f3affa8c5aaf-40/s500x750/4274e90c80bedfd0d38f180616617874bea6c435.png',
                    width: 75,
                    height: 75)),
            Column(children: [
              const Text('Nome:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              const Text('ㅤTelefone:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
              const Text('Email:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ])
          ]),
          const Divider(
            height: 15,
            thickness: 2,
            color: Colors.blue,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            ElevatedButton(
                child: const Icon(Icons.favorite, color: Colors.black),
                onPressed: () {}),
            ElevatedButton(
                child: const Icon(Icons.brush, color: Colors.black),
                onPressed: () {}),
            ElevatedButton(
                child: const Icon(Icons.tag_faces, color: Colors.black),
                onPressed: () {}),
            ElevatedButton(
                child: const Icon(Icons.delete, color: Colors.black),
                onPressed: () {}),
          ])
        ]));
    ;
  }
}
