import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'DeliMeals',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: myHomePage(),
  ));
}

class myHomePage extends StatefulWidget {
  myHomePage({Key? key}) : super(key: key);

  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
