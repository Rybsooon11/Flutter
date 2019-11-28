import 'package:choose_food/models/politics.dart';
import 'package:flutter/material.dart';

import './models/category.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Prawo i Sprawiedliwość',
    color: Colors.blue,
  ),
  Category(
    id: 'c2',
    title: 'Koalicja Obywatelska',
    color: Colors.white,
  ),
  Category(
    id: 'c3',
    title: 'Lewica',
    color: Colors.pink,
  ),
  Category(
    id: 'c4',
    title: 'PSL-Koalicja Polska',
    color: Colors.green,
  ),
  Category(
    id: 'c5',
    title: 'Konfederacja',
    color: Colors.indigo,
  ),
];

const POLITICS = const [
  Politic(
    id: 'p1',
    parties: 'c5',
    firstName: 'Janusz',
    lastName: 'Korwin-Mikke',
    imgUrl:
        'https://pbs.twimg.com/profile_images/593430376443445248/m99ZwQgD_400x400.jpg',
    age: 77,
    views: Views.Right,
    isYounger: false,
    isOlder: true,
    isMan: true,
    isWomen: false,
  ),
  Politic(
    id: 'p2',
    parties: 'c4',
    firstName: 'Paweł',
    lastName: 'Kukiz',
    imgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Paweł_Kukiz_Sejm_2016_01.JPG/253px-Paweł_Kukiz_Sejm_2016_01.JPG',
    age: 56,
    views: Views.Center,
    isYounger: false,
    isOlder: true,
    isMan: true,
    isWomen: false,
  ),
  Politic(
    id: 'p3',
    parties: 'c3',
    firstName: 'Adrian',
    lastName: 'Zandberg',
    imgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Adrian_Zandberg_portrait_2016.jpg/239px-Adrian_Zandberg_portrait_2016.jpg',
    age: 40,
    views: Views.Left,
    isYounger: true,
    isOlder: false,
    isMan: true,
    isWomen: false,
  ),
  Politic(
    id: 'p4',
    parties: 'c1',
    firstName: 'Jarosław',
    lastName: 'Kaczyński',
    imgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Jarosław_Kaczyński_Sejm_2016a.JPG/260px-Jarosław_Kaczyński_Sejm_2016a.JPG',
    age: 70,
    views: Views.Center,
    isYounger: false,
    isOlder: true,
    isMan: true,
    isWomen: false,
  ),
  Politic(
    id: 'p5',
    parties: 'c2',
    firstName: 'Grzegorz',
    lastName: 'Schetyna',
    imgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Grzegorz_Schetyna_Sejm_2019.jpg/285px-Grzegorz_Schetyna_Sejm_2019.jpg',
    age: 56,
    views: Views.Center,
    isYounger: false,
    isOlder: true,
    isMan: true,
    isWomen: false,
  ),
];
