import 'package:choose_food/models/politics.dart';
import 'package:flutter/material.dart';

import '../widgets/politic_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-politics';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Politic> displayPolitic;
  bool _loadedInitDate = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitDate) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayPolitic = POLITICS.where((politic) {
        return politic.parties.contains(categoryId);
      }).toList();
      _loadedInitDate = true;
    }
    super.didChangeDependencies();
  }

  void _removeItem(String politicId) {
    setState(() {
      displayPolitic.removeWhere((meal) => meal.id == politicId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle + ' Politics',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return PoliticItem(
            id: displayPolitic[index].id,
            firstName: displayPolitic[index].firstName,
            lastName: displayPolitic[index].lastName,
            imgUrl: displayPolitic[index].imgUrl,
            age: displayPolitic[index].age,
            education: displayPolitic[index].education,
            description: displayPolitic[index].description,
            views: displayPolitic[index].views,
            removeItem: _removeItem,
          );
        },
        itemCount: displayPolitic.length,
      ),
    );
  }
}
