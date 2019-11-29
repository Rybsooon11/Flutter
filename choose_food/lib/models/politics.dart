import 'package:flutter/foundation.dart';

enum Views { Left, Right, Center }

class Politic {
  final String id;
  final String parties;
  final String firstName;
  final String lastName;
  final String imgUrl;
  final int age;
  final String education;
  final String description;
  final Views views;
  final bool isYounger;
  final bool isOlder;
  final bool isMan;
  final bool isWomen;

  const Politic(
      {@required this.id,
      @required this.parties,
      @required this.firstName,
      @required this.lastName,
      @required this.imgUrl,
      @required this.age,
      @required this.education,
      @required this.description,
      @required this.views,
      @required this.isYounger,
      @required this.isOlder,
      @required this.isMan,
      @required this.isWomen});
}
