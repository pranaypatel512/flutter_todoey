import 'package:flutter/material.dart';
import 'package:flutter_todoey/model/task.dart';
import 'package:flutter_todoey/widgets/task_list_item.dart';

class TasksListWidget extends StatefulWidget {
  const TasksListWidget({
    super.key,
  });

  @override
  State<TasksListWidget> createState() => _TasksListWidgetState();
}

class _TasksListWidgetState extends State<TasksListWidget> {
  List<Task> tasksList = [
    Task(name: 'Buy Cloths'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Veg')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: tasksList
          .map((e) =>
              TasksListItem(taskTitle: e.name ?? "", isChecked: e.isDone))
          .toList()
          .cast(),
    );
  }
}
