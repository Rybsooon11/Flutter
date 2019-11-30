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
    education: 'Uniwersytet Warszawski',
    description: 'Janusz Ryszard Korwin-Mikke (ur. 27 października 1942 w Warszawie) – polski polityk, publicysta i filozof.',
    views: Views.Right,
    isYounger: false,
    isOlder: true,
    isMan: true,
    isWoman: false,
  ),
  Politic(
    id: 'p2',
    parties: 'c4',
    firstName: 'Paweł',
    lastName: 'Kukiz',
    imgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Paweł_Kukiz_Sejm_2016_01.JPG/253px-Paweł_Kukiz_Sejm_2016_01.JPG',
    age: 56,
    education: 'Uniwersytet Warszawski, Uniwersytet Wrocławski',
    description: 'Paweł Piotr Kukiz – polski polityk, muzyk, wokalista, autor tekstów piosenek, aktor. W latach 1984–2013 lider zespołu Piersi.',
    views: Views.Center,
    isYounger: false,
    isOlder: true,
    isMan: true,
    isWoman: false,
  ),
  Politic(
    id: 'p3',
    parties: 'c3',
    firstName: 'Adrian',
    lastName: 'Zandberg',
    imgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Adrian_Zandberg_portrait_2016.jpg/239px-Adrian_Zandberg_portrait_2016.jpg',
    age: 40,
    education: 'Uniwersytet Warszawski',
    description: 'Adrian Tadeusz Zandberg – polski historyk, doktor nauk humanistycznych, nauczyciel akademicki, przedsiębiorca, polityk, współzałożyciel i członek Zarządu Krajowego partii Razem.',
    views: Views.Left,
    isYounger: true,
    isOlder: false,
    isMan: true,
    isWoman: false,
  ),
  Politic(
    id: 'p4',
    parties: 'c1',
    firstName: 'Jarosław',
    lastName: 'Kaczyński',
    imgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Jarosław_Kaczyński_Sejm_2016a.JPG/260px-Jarosław_Kaczyński_Sejm_2016a.JPG',
    age: 70,
    education: 'Wydział Prawa i Administracji Uniwersytetu Warszawskiego. Collegium Iuridicum I',
    description: 'Jarosław Aleksander Kaczyński – polski polityk i prawnik, współzałożyciel i od 2003 roku prezes partii Prawo i Sprawiedliwość.',
    views: Views.Center,
    isYounger: false,
    isOlder: true,
    isMan: true,
    isWoman: false,
  ),
  Politic(
    id: 'p5',
    parties: 'c2',
    firstName: 'Grzegorz',
    lastName: 'Schetyna',
    imgUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Grzegorz_Schetyna_Sejm_2019.jpg/285px-Grzegorz_Schetyna_Sejm_2019.jpg',
    age: 56,
    education: 'Uniwersytet Wrocławski',
    description: 'Grzegorz Juliusz Schetyna – polski polityk, z wykształcenia historyk. Od 1997 poseł na Sejm RP III, IV, V, VI, VII, VIII i IX kadencji, w latach 2007–2009 wicepremier oraz minister spraw wewnętrznych.',
    views: Views.Center,
    isYounger: false,
    isOlder: true,
    isMan: true,
    isWoman: false,
  ),
];
