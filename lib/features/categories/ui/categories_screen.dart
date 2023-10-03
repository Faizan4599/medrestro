import 'package:flutter/material.dart';
import 'package:medresto/features/categories/presentaion/bloc/categories_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesScreen extends StatefulWidget {
  int tableNumber;
  CategoriesScreen({super.key, required this.tableNumber});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final CategoriesBloc categoriesBloc = CategoriesBloc();
  final _topicController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: BlocConsumer<CategoriesBloc, CategoriesState>(
        bloc: categoriesBloc,
        buildWhen: (previous, current) => current is! CategoriesActionState,
        listenWhen: (previous, current) => current is CategoriesActionState,
        listener: (context, state) {
          if (state is CategoriesSuccessState) {}
        },
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      hintText: 'Search menus',
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
