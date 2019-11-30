import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../models/politics.dart';
import '../screens/politic_details.dart';

class PoliticItem extends StatelessWidget {
  final String id;
  final String firstName;
  final String lastName;
  final String imgUrl;
  final int age;
  final String education;
  final String description;
  final Views views;

  PoliticItem(
      {@required this.id,
      @required this.firstName,
      @required this.lastName,
      @required this.imgUrl,
      @required this.age,
      @required this.education,
      @required this.description,
      @required this.views,});

  String get viewsText {
    switch (views) {
      case Views.Left:
        return "Left-wing";
        break;
      case Views.Right:
        return "Right-wing";
        break;
      case Views.Center:
        return "Center-wing";
        break;
      default:
        return "Unkown page";
    }
  }

  void selectPolitic(BuildContext context) {
    Navigator.of(context).pushNamed(
      PoliticDetails.routeName,
      arguments: id,
    ).then((result) => {
        if(result != null){
          // removeItem(result),
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectPolitic(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imgUrl,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 110,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      (2019 - age).toString() + "r",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.perm_identity),
                      SizedBox(width: 12),
                      Text('$firstName $lastName'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.visibility),
                      SizedBox(width: 12),
                      Text(viewsText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
