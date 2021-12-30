import 'package:flutter/material.dart';
import 'package:meals_app/widgets/drawer_main.dart';

class FiltersScreen extends StatelessWidget {
  static const String routeName = '/filters-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      drawer: DrawerMain(),
      body: const Center(
        child: Text("Filters!"),
      ),
    );
  }
}
