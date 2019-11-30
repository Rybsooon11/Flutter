import 'package:flutter/material.dart';

import './dummy_data.dart';
import './models/politics.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import './screens/politic_details.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'young': false,
    'old': false,
    'man': false,
    'woman': false,
  };

  List<Politic> _availablePolitics = POLITICS;
  List<Politic> _favoritePolitics = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availablePolitics = POLITICS.where((politic) {
        if (_filters['young'] && !politic.isYounger) {
          return false;
        }
        if (_filters['old'] && !politic.isOlder) {
          return false;
        }
        if (_filters['man'] && !politic.isMan) {
          return false;
        }
        if (_filters['woman'] && !politic.isWoman) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String politicId) {
    final existingIndex =
        _favoritePolitics.indexWhere((politic) => politic.id == politicId);
    if (existingIndex >= 0) {
      setState(() {
        _favoritePolitics.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoritePolitics.add(
          POLITICS.firstWhere((politic) => politic.id == politicId),
        );  
      });
    }
  }

  bool _isPoliticFavorite(String id){
    return _favoritePolitics.any((politics) => politics.id == id);
  }

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
            )),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoritePolitics),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availablePolitics),
        PoliticDetails.routeName: (ctx) => PoliticDetails(_toggleFavorite, _isPoliticFavorite),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _setFilters),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
