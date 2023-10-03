import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medresto/constants/app_colors.dart';
import 'package:medresto/features/categories/ui/categories_screen.dart';
import 'package:medresto/features/menus/ui/menus_screen.dart';
import 'package:medresto/features/tables/presentation/bloc/tables_bloc.dart';

class TablesScreen extends StatefulWidget {
  const TablesScreen({super.key});

  @override
  State<TablesScreen> createState() => _TablesScreenState();
}

class _TablesScreenState extends State<TablesScreen> {
  final TablesBloc tablesBloc = TablesBloc();
  int table = 10;
  int? tableNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<TablesBloc, TablesState>(
        bloc: tablesBloc,
        buildWhen: (previous, current) => current is! TablesActionState,
        listenWhen: (previous, current) => current is TablesActionState,
        listener: (context, state) {
          if (state is TablesSuccessState) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        CategoriesScreen(tableNumber: tableNumber ?? 0)));
          }
        },
        builder: (context, state) {
          return SizedBox(
            child: GridView.builder(
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: table,
              itemBuilder: (BuildContext context, int index) {
                tableNumber = index + 1;
                return Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.05,
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.0), // Adjust the border radius as needed
                    ),
                    child: InkWell(
                      onTap: () async {
                        tableNumber = index + 1;
                        tablesBloc.add(TablesClickedEvent());
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoriesScreen(
                                    tableNumber: tableNumber ?? 0)));
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            "Table $tableNumber",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
