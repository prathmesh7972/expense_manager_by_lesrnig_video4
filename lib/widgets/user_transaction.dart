import 'package:expense_manager_by_lesrnig_video4/widgets/transaction_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/transaction.dart';
import 'new_transacton.dart';

class Usertransactions extends StatefulWidget {
  const Usertransactions({Key? key}) : super(key: key);

  @override
  State<Usertransactions> createState() => _UsertransactionsState();
}

class _UsertransactionsState extends State<Usertransactions> {
  final List<Transaction> _usertransaction = [
    Transaction(id: 't1', title: 'abc', amount: 69.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'pqr', amount: 89.99, date: DateTime.now()),
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());
    setState(() {
      _usertransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
       TransactionList(_usertransaction)],
    );
  }
}
