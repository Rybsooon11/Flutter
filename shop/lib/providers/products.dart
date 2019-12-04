import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier{
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'http://ae01.alicdn.com/kf/HTB1Q8XmJSzqK1RjSZPxq6A4tVXa7.jpg?width=1000&height=1000&hash=2000',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://www.magee1866.com/Images/Models/Full/11777.Jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'http://www.juegosdemariobross.net/aura/Frying-Pan-Clipart-Clipart-Suggest.jpg',
    ),
  ];

  var _showFavoriteOnly = false;

  List<Product> get items {
    // if(_showFavoriteOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList(); 
    // }
      return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite == true).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoriteOnly(){
  //   _showFavoriteOnly = true;
  //   notifyListeners();
  // }

  // void showAll(){
  //   _showFavoriteOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    notifyListeners();
  }
}