import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Expensecat extends StatefulWidget {
  const Expensecat({super.key});

  @override
  State<Expensecat> createState() => _ExpensecatState();
}

class _ExpensecatState extends State<Expensecat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Expense category ${index}'),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox();
          },
          itemCount: 10),
    );
  }
}
