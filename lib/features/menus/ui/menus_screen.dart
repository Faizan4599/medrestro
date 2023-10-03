import 'package:flutter/material.dart';

class MenusScreen extends StatefulWidget {
  int tableNumber;
  MenusScreen({super.key, required this.tableNumber});

  @override
  State<MenusScreen> createState() => _MenusScreenState();
}

class _MenusScreenState extends State<MenusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Center(
        child: Text("Menus Screen"),
      ),
    );
  }
}
