import 'package:flutter/material.dart';
import 'package:my_todo/connectors/WorkList.dart';
import 'package:my_todo/model/TaskHandling.dart';
import 'NewTaskScreen.dart';


class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Your Tasks'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 50,top: 20,left: 10,right: 10),
        child: WorkList()
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFF2656D6),
        label: Text('Add New Task',style: TextStyle(fontSize: 15)),
        icon: Icon(Icons.add,size: 30,color: Colors.white),
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context) => NewTaskScreen());
          }
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}