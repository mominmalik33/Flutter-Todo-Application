import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo/model/TaskHandling.dart';
import 'package:provider/provider.dart';


class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.assignment_turned_in,color: Colors.white,size: MediaQuery.of(context).size.height/10,),
                    Text('Completed Tasks',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
            width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.clear,color: Colors.white,size: MediaQuery.of(context).size.height/10,),
                    Text('Pending Tasks',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.message,color: Colors.black87,size: MediaQuery.of(context).size.height/10,),
                    Text('${Provider.of<TasksHandling>(context).taskCount} Total Tasks',style: TextStyle(fontSize: 20,color: Colors.black87,fontWeight: FontWeight.w500))
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.home,color: Colors.white,size: MediaQuery.of(context).size.height/10,),
                      Text('Return To Home',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}