import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Posłowie', 
        ),
      ),
      body: Center(
        child: Text('Your posłowie from partia'),
      ),
    );
  }
}
