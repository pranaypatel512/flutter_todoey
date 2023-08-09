import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_todoey/model/task.dart';

class TasksProvider extends ChangeNotifier {
  List<Task> _tasksList = [
    Task(name: 'Buy Cloths'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Veg')
  ];

  void taskDone(int index) {
    _tasksList[index].isDone = !_tasksList[index].isDone;
    notifyListeners();
  }

  void addTask(String? taskTitle) {
    _tasksList.add(Task(name: taskTitle));
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasksList.removeAt(index);
    notifyListeners();
  }

  UnmodifiableListView<Task> get getList {
    return UnmodifiableListView(_tasksList);
  }

  int get taskCount {
    return _tasksList.length;
  }
}
