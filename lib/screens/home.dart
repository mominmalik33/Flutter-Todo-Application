import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../connectors/menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color myColor = Color(0xFF212F3C);
    return Scaffold(
      backgroundColor: Color(0xFF0EEBF5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top:75,bottom: 30,left: 30,right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.assignment,size: 50.0,color: Color(0xFF0EEBF5)),
                  radius: 30.0,
                  backgroundColor: myColor,
                ),
                SizedBox(height: 40),
                Text('Todo Home',
                  style: TextStyle(
                    fontSize: 50,
                    color: myColor,
                    fontWeight: FontWeight.w900
                  ),
                ),
                Text(
                  'Your Task Management Tool',
                  style: TextStyle(
                    color: myColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color(0xFF3E3E3C),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) )
              ),
              child: Menu(),
            ),
          )
        ],
      ),
    );
  }
}
