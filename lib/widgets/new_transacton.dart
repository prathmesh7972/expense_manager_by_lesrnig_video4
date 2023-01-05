import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewTransaction extends StatelessWidget {
  // NewTransaction({Key? key}) : super(key: key);
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        TextField(
          decoration: InputDecoration(label: Text('Title')),
          controller: titleController,
        ),
        TextField(
          decoration: InputDecoration(label: Text('Amount')),
          controller: amountController,
        ),
        FlatButton(
          onPressed: (() {
            addTx(titleController.text,double.parse(amountController.text));
          }),
          child: Text('add'),
          textColor: Colors.purple,
        )
      ]),
    ));
  }
}
