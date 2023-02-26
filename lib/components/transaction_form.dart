import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double) onSubmit;

  const TransactionForm(this.onSubmit, {super.key});

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final titleCrontroller = TextEditingController();

  final valueController = TextEditingController();

  _submitForm() {
    final title = titleCrontroller.text;
    final value = double.tryParse(valueController.text) ?? 0.0;

    if (title.isEmpty || value <= 0) {
      return;
    }

    widget.onSubmit(title, value);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          TextField(
            controller: titleCrontroller,
            onSubmitted: (value) {
              _submitForm();
            },
            decoration: const InputDecoration(labelText: "Título"),
          ),
          TextField(
            controller: valueController,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            onSubmitted: (value) {
              _submitForm();
            },
            decoration: const InputDecoration(labelText: "Valor (R\$)"),
          ),
          TextButton(
            onPressed: _submitForm,
            child: Text(
              "Nova transação",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
