import 'package:flutter/material.dart';
import '../components/transaction_list.dart';
import '../components/transaction_form.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: "id1",
      title: "Tenis Nike",
      value: 499.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "id2",
      title: "Tenis Adidas",
      value: 299.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions),
        const TransactionForm(),
      ],
    );
  }
}
