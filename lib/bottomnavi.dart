import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/categories.dart';
import 'package:flutter_application_1/transaction.dart';

class Bottommoney extends StatefulWidget {
  Bottommoney({Key? key}) : super(key: key);

  @override
  _BottommoneyState createState() => _BottommoneyState();
}

class _BottommoneyState extends State<Bottommoney> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Transaction(),
    Categories(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Money Manager',
              style: TextStyle(
                  fontStyle: FontStyle.normal, fontWeight: FontWeight.w100),
            ),
            backgroundColor: Colors.grey.withRed(3)),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Transactions',
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  label: 'Categories',
                  backgroundColor: Colors.yellow),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.grey.withRed(9),
            unselectedItemColor: Colors.grey,
            iconSize: 25,
            onTap: _onItemTapped,
            elevation: 5),
      ),
    );
  }
}
