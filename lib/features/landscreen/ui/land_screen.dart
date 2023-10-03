import 'package:flutter/material.dart';
import 'package:medresto/constants/app_constants.dart';
import 'package:medresto/features/menus/ui/menus_screen.dart';
import 'package:medresto/features/orders/ui/orders_screen.dart';
import 'package:medresto/features/tables/ui/tables_screen.dart';

class LandScreen extends StatefulWidget {
  const LandScreen({super.key});

  @override
  State<LandScreen> createState() => _LandScreenState();
}

class _LandScreenState extends State<LandScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppConstants.appName),
            bottom: const TabBar(tabs: [
              Tab(
                text: "Tables",
              ),
              Tab(
                text: "Orders",
              )
            ]),
          ),
          body: TabBarView(children: [TablesScreen(), OrdersScreen()]),
        ));
  }
}
