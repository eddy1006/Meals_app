import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favorites;
  FavoritesScreen(this.favorites);

  @override
  Widget build(BuildContext context) {
    if (favorites.isEmpty) {
      return const Center(
        child: Text('you dont have any favorites start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favorites[index].id,
            title: favorites[index].title,
            imageurl: favorites[index].imageUrl,
            duration: favorites[index].duration,
            affordability: favorites[index].affordability,
            complexity: favorites[index].complexity,
          );
        },
        itemCount: favorites.length,
      );
    }
  }
}
