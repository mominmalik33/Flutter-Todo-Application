import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo/connectors/MenuItems.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MenuItems(
                  title: 'Task Management',iconData:Icon(Icons.apps, size: 80, color: Colors.cyan),backGround: Colors.purpleAccent,
                  tap:  () {
                    Navigator.pushNamed(context,'/first');
                    },
                ),
                MenuItems(
                    title: 'Task Stats',iconData:Icon(Icons.assessment, size: 80, color: Colors.green),backGround: Colors.pink[100],
                  tap:  () {
                    Navigator.pushNamed(context,'/second');
                  },
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MenuItems(
                    title: 'Achievements',iconData:Icon(Icons.assignment_turned_in, size: 80, color: Colors.deepOrange),backGround: Colors.greenAccent[400],
                  tap:  () {
                    Navigator.pushNamed(context,'/fourth');
                  },
                ),
                MenuItems(
                    title: 'Account Management',iconData:Icon(Icons.account_box, size: 80, color: Colors.pink[100]),backGround: Colors.cyanAccent[100],
                  tap:  () {
                    Navigator.pushNamed(context,'/third');
                  },
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}