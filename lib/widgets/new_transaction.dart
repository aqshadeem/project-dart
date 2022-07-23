import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (val) => titleInput = val,
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (val) => amountInput = val,
              controller: amountController,
            ),
            TextButton(
              child: Text('Add Transaction'),
              style: TextButton.styleFrom(primary: Colors.purple),
              onPressed: () {
                print(addTx(
                  titleController.text,
                  double.tryParse(amountController.text),
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
