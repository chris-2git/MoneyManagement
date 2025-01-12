import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 60,
              child: Text(
                '22\njan',
                textAlign: TextAlign.center,
              ),
            ),
            title: Text('Rs 10000'),
            subtitle: Text(
              'Travel',
              style: TextStyle(fontSize: 10),
            ),
          );
        },
      ),
    );
  }
}
