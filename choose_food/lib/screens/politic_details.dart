import 'package:flutter/material.dart';

import '../dummy_data.dart';

class PoliticDetails extends StatelessWidget {
  static const String routeName = '/politic-detail';

  @override
  Widget build(BuildContext context) {
    final politicId = ModalRoute.of(context).settings.arguments as String;
    final selectedPolitic =
        POLITICS.firstWhere((politic) => politic.id == politicId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${selectedPolitic.firstName} ${selectedPolitic.lastName}',
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 400,
            width: double.infinity,
            child: Image.network(
              selectedPolitic.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.perm_identity),
                    SizedBox(width: 12),
                    Text(
                        '${selectedPolitic.firstName} ${selectedPolitic.lastName}'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.timelapse),
                    SizedBox(width: 12),
                    Text('Years ${selectedPolitic.age}'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.school),
                    SizedBox(width: 12),
                    Text(
                      '${selectedPolitic.education}',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.description),
                    SizedBox(width: 12),
                    Text(
                      '${selectedPolitic.description}',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.delete,
          color: Colors.grey,
        ),
        onPressed: () {
          Navigator.of(context).pop(politicId);
        },
      ),
    );
  }
}
