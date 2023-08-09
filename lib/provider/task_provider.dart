import 'package:flutter/material.dart';
import 'package:flutter_todoey/model/task.dart';

class TasksProvider extends ChangeNotifier {
  List<Task> tasksList = [
    Task(name: 'Buy Cloths'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Veg')
  ];

  void taskDone(int index) {
    tasksList[index].isDone = !tasksList[index].isDone;
    notifyListeners();
  }

  void addTask(String? taskTitle) {
    tasksList.add(Task(name: taskTitle));
    notifyListeners();
  }

  void deleteTask(int index) {
    tasksList.removeAt(index);
    notifyListeners();
  }

  List<Task> getList(){
    return tasksList;
  }
}
