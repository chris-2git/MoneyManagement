import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Incomecat extends StatefulWidget {
  const Incomecat({super.key});

  @override
  State<Incomecat> createState() => _IncomecatState();
}

class _IncomecatState extends State<Incomecat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Income category ${index}'),
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
