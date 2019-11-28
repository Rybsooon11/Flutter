import 'package:flutter/material.dart';

import '../widgets/politic_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-politics';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryPolitics = POLITICS.where((politic) {
      return politic.parties.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle + ' Politics',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return PoliticItem(
            firstName: categoryPolitics[index].firstName,
            lastName: categoryPolitics[index].lastName,
            imgUrl: categoryPolitics[index].imgUrl,
            views: categoryPolitics[index].views,
          );
        }, itemCount: categoryPolitics.length,),
      );
  }
}
