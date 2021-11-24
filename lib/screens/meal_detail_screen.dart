import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ingrideants',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ListView.builder(
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Theme.of(context).colorScheme.secondary,
                  child: Text('${selectedMeal.ingredients[index]}'),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
