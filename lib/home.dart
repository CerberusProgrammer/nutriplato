import 'package:flutter/material.dart';
import 'package:nutriplato/contact/contact.dart';
import 'package:nutriplato/plate/plate.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> with SingleTickerProviderStateMixin {
  static late TabController controller;

  static const List<Widget> _tabs = [
    Tab(
      icon: Icon(Icons.home),
      text: 'Plato',
    ),
    Tab(
      icon: Icon(Icons.person),
      text: 'Profile',
    )
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('NutriPlato'),
        ),
        body: TabBarView(
          controller: controller,
          children: const [
            Plate(),
            Contact(),
          ],
        ),
        bottomNavigationBar: Material(
            child: TabBar(
          tabs: _tabs,
          controller: controller,
        )),
      ),
    );
  }
}
