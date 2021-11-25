import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filter-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(routeName),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text(routeName),
      ),
    );
  }
}
