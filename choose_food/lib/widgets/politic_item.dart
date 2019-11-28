import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class PoliticItem extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String imgUrl;
  final int age;

  PoliticItem(
      {@required this.firstName,
      @required this.lastName,
      @required this.imgUrl,
      @required this.age});

  void selectPolitic() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectPolitic,
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
            )
          ],
        ),
      ),
    );
  }
}
