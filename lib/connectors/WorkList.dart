import 'package:flutter/material.dart';
import 'package:my_todo/model/TaskHandling.dart';
import 'package:provider/provider.dart';
import 'WorkTile.dart';

class WorkList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksHandling>(
      builder: (context,tasksHandling,child){
        return tasksHandling.taskCount != 0?ListView.builder(
            itemBuilder: (context,index){
              final work = tasksHandling.detail[index];
              return WorkTile(
                check: work.check,
                title: work.title,
                index: index,
                notice: (value){
                  tasksHandling.taskUpdate(work);
                },
                longPress: (){
                  tasksHandling.removeTask(work);
                },
              );
            },
          itemCount: tasksHandling.taskCount,
        ):
            Center(
              child: Text('Add Your Tasks',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 17)),
            )
        ;
      }
    );
  }
}
