import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  const TransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    final titleCrontroller = TextEditingController();
    final valueController = TextEditingController();

    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          TextField(
            controller: titleCrontroller,
            decoration: const InputDecoration(labelText: "Título"),
          ),
          TextField(
            controller: valueController,
            decoration: const InputDecoration(labelText: "Valor (R\$)"),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Nova transação",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.pink.shade600,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
