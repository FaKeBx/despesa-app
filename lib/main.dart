import 'package:despesas/models/transacao.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DespesasApp());
}

class DespesasApp extends StatelessWidget {
  const DespesasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _transacoes = [
    Transacao(
      id: "id1",
      titulo: "Tenis Nike",
      valor: 499.99,
      data: DateTime.now(),
    ),
    Transacao(
      id: "id2",
      titulo: "Tenis Adidas",
      valor: 299.99,
      data: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("DespApp"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Card(
            elevation: 5,
            color: Colors.blueGrey,
            child: Text(
              "Gráficos",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          Card(
            elevation: 5,
            color: Colors.blueGrey,
            child: Text(
              "Lista de Transações",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
