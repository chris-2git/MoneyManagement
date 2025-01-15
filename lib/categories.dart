import 'package:flutter/material.dart';
import 'package:flutter_application_1/expensecat.dart';
import 'package:flutter_application_1/incomecat.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                text: 'INCOME',
                icon: Icon(Icons.attach_money_sharp),
              ),
              Tab(
                text: 'EXPENSE',
                icon: Icon(Icons.shopping_bag_outlined),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Incomecat(),
            Expensecat(),
          ],
        ),
      ),
    );
  }
}
