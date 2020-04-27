import 'dart:collection';

import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy milk',isDone: true),
    Task(name: 'Buy eggs',isDone: false),
    Task(name: 'Buy bread',isDone: true),
  ];

  UnmodifiableListView get tasks{
    return UnmodifiableListView(_tasks);
  }
  void toggleTask(int index){
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void addToList(String taskTitle){
    _tasks.add(Task(name: taskTitle,isDone: false));
    notifyListeners();
  } 

  void deleteTask(int index){
    _tasks.removeAt(index);
    notifyListeners();
  }

  int get taskCount{
    return tasks.length;
  }
}