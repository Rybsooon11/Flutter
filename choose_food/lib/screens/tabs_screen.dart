import 'package:flutter/material.dart';

import '../screens/favorites_screen.dart';
import '../screens/categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Diet'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.category),
              text: 'Parties',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favorite',
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            FavoriteScreen(),
          ],
        ),
      ),
    );
  }
}
