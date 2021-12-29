import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = '/category-meals';

  // final String CategoryId;
  // final String CategoryTitle;

  // CategoryMealsScreen(this.CategoryId, this.CategoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: const Center(
        child: Text("The recipes for category!"),
      ),
    );
  }
}
