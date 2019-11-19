import 'package:flutter/material.dart';
import 'package:hello_world/widgets/call_to_action/call_to_action.dart';
import 'package:hello_world/widgets/centered_views/centered_views.dart';
import 'package:hello_world/widgets/course_details/course_details.dart';
import 'package:hello_world/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super (key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView( 
            child: Column(
              children: <Widget>[
                NavigationBar(),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      CourseDetail(),
                      Expanded(child: Center(child: CallToAction('Join Course'),),)
                      ],
                    ),
                    )
                  ],
            ),
      ),
    );
  }   
}
