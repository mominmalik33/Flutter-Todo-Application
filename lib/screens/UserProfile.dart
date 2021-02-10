import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            color: Colors.indigo,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.purpleAccent,
      ),
      backgroundColor: Colors.purpleAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
            Text(
              "App User",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
                color: Colors.indigo,
              ),
            ),
            Text(
              "Be Productive",
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.indigo[200],
                fontSize: 20.0,
                letterSpacing: 3.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.purpleAccent,
                ),
                title: Text(
                  "+67890-1234567",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.deepPurpleAccent,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              child: ListTile(
                leading:  Icon(
                  Icons.email,
                  color: Colors.purpleAccent,
                ),
                title: Text(
                  "abc@123.com",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.deepPurpleAccent,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}