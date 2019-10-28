import 'package:expenses_app/models/transaction.dart';
import 'package:flutter/material.dart';

import 'ShoppingItem.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (ctx, idx) {
            return ShoppingItem(transactions[idx]);
          },
          itemCount: transactions.length,
        ));
  }
}
