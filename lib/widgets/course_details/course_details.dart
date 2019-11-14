import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({Key key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'FLUTTER WEB,\nxD',
            style: TextStyle(fontWeight: FontWeight.w800, height: 1, fontSize: 80),
          ),
          SizedBox(height: 30,),
          Text('Moja pierwsza apka pozdrawiam Zuzie!',
          style: TextStyle(fontSize: 21, height: 1.7,)
          )
        ],
      ),
    );
  }
}