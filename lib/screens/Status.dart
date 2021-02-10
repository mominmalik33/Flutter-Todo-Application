import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_todo/model/TaskHandling.dart';


class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tasks = Provider.of<TasksHandling>(context).taskCount;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Task Status'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.brown[200],
      ),
      body: Container(
        color: tasks == 0 ? Colors.black87: Colors.orange[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            Text(
              tasks == 0 ?'Winning  \n No Pending Tasks': '$tasks Pending Tasks \n Do It Friend',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.purpleAccent,
                fontWeight: FontWeight.w900
              ),
            ),
            Image.asset(
              tasks==0 ? 'assets/winning.jpg': 'assets/loosing.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
            ),
          ],
        )
      )
    );
  }
}
