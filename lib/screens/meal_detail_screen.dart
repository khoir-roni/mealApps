import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-screen';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal $mealId'),
      ),
      body: Center(
        child: Text('The Meals $mealId'),
      ),
    );
  }
}
