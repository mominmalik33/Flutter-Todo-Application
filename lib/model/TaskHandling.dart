import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'MyTasks.dart';

class TasksHandling extends ChangeNotifier{
  List<MyTasks> tasks = [];

  int get taskCount{
    return tasks.length;
  }

  void addTask(String taskName){
    final task = MyTasks(title: taskName);
    tasks.add(task);
    notifyListeners();
  }
  void removeTask(MyTasks task){
    tasks.remove(task);
    notifyListeners();
  }

  UnmodifiableListView<MyTasks> get detail{
    return UnmodifiableListView(tasks);
  }

  void taskUpdate(MyTasks task){
    task.workDone();
    notifyListeners();
  }

}