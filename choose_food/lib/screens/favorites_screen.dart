import 'package:flutter/material.dart';

import '../models/politics.dart';
import '../widgets/politic_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Politic> favoritePolitics;

  FavoriteScreen(this.favoritePolitics);

  @override
  Widget build(BuildContext context) {
    if (favoritePolitics.isEmpty) {
      return Center(
        child: Text('Favorites Politics'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return PoliticItem(
            id: favoritePolitics[index].id,
            firstName: favoritePolitics[index].firstName,
            lastName: favoritePolitics[index].lastName,
            imgUrl: favoritePolitics[index].imgUrl,
            age: favoritePolitics[index].age,
            education: favoritePolitics[index].education,
            description: favoritePolitics[index].description,
            views: favoritePolitics[index].views,
          );
        },
        itemCount: favoritePolitics.length,
      );
    }
  }
}
