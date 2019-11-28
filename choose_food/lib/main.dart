import 'package:flutter/material.dart';

import './categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Political parties 2019',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.blueGrey,
        canvasColor: Colors.blueGrey[100],  
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          body2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          title: TextStyle(
            fontSize: 18,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold, 
          )
        ),
      ),
      home: CategoriesScreen(),
    );
  }
}
