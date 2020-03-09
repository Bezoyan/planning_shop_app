import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './transaction_list.dart';
import './new_transation.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: 'Food',
      amount: 23.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Cleaning staff',
      amount: 30.99,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txTitile, double txAmount) {
    final newTx = Transaction(
        title: txTitile,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    );
  }
}
