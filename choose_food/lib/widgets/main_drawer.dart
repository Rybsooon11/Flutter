import 'package:flutter/material.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {

  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            margin: EdgeInsets.only(top: 25),
            padding: EdgeInsets.all(30),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Speaking',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          buildListTile('Parties',
           Icons.category,
           () {
             Navigator.of(context).pushReplacementNamed('/');
           }
           ),
          buildListTile('Filters',
           Icons.settings,
           () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
           }
           ),
        ],
      ),
    );
  }
}
