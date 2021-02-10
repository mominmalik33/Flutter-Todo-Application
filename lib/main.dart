import 'package:flutter/material.dart';
import 'package:my_todo/screens/Stats.dart';
import 'package:my_todo/screens/Status.dart';
import 'package:my_todo/screens/TaskScreen.dart';
import 'package:my_todo/screens/UserProfile.dart';
import 'model/TaskHandling.dart';
import 'screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TasksHandling(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/':(context) => Home(),
          '/first':(context) => TaskScreen(),
          '/second':(context) => Stats(),
          '/third':(context) => UserProfile(),
          '/fourth':(context) => Status(),
        },
      ),
    );
  }
}