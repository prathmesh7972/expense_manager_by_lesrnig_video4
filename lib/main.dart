// import 'package:expense_manager_by_lesrnig_video4/Transaction.dart';
import 'package:expense_manager_by_lesrnig_video4/models/transaction.dart';
import 'package:expense_manager_by_lesrnig_video4/widgets/new_transacton.dart';
import 'package:expense_manager_by_lesrnig_video4/widgets/user_transaction.dart';
import 'package:flutter/material.dart';
// import 'package:expense_manager_by_lesrnig_video4/transaction.dart';
import 'models/transaction.dart';
import 'package:intl/intl.dart';
// import 'widgets/trasaction_list.dart';
import 'widgets/transaction_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App third',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // MyHomePage({Key? key}) : super(key: key);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App 2nd time'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: const Card(
                color: Colors.blue,
                // ignore: prefer_const_constructors
                child: Text('child'),
                elevation: 5,
              ),
            ),
            Usertransactions(),
          ],
        ),
      ),
    );
  }
}
