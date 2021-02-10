import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_todo/model/TaskHandling.dart';
import 'package:provider/provider.dart';


class NewTaskScreen extends StatefulWidget {
  @override
  _NewTaskScreenState createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  String newWork;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              autofocus: true,
              style: TextStyle(color: Colors.white,fontSize: 20),
              cursorColor: Colors.lightBlue,
              decoration: InputDecoration(
                hintText: 'Enter Your Task',
                prefixIcon: Icon(Icons.add_circle_outline,color: Colors.lightBlue),
                hintStyle: TextStyle(color: Colors.lightBlue,fontSize: 20,fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
              onChanged: (value){
                newWork = value;
              },
            ),
            SizedBox(height: 120),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Add',style: TextStyle(fontSize: 20,color: Colors.white)),
                  ),
                  elevation: 0,
                  color: Colors.green,
                  onPressed: (){
                    Provider.of<TasksHandling>(context).addTask(newWork);
                    Navigator.pop(context);
                  },
                ),
                RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Cancel',style: TextStyle(fontSize: 20,color: Colors.white)),
                  ),
                  color: Colors.red,
                  elevation: 0,
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.exit_to_app,size: 50,),
        backgroundColor: Colors.pink[400],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
