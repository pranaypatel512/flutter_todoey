import 'package:flutter/material.dart';
import 'package:flutter_todoey/model/task.dart';
import 'package:flutter_todoey/provider/task_provider.dart';
import 'package:flutter_todoey/widgets/task_list_item.dart';
import 'package:provider/provider.dart';

class TasksListWidget extends StatefulWidget {
  TasksListWidget({super.key, required this.tasksList});
  List<Task> tasksList;

  @override
  State<TasksListWidget> createState() => _TasksListWidgetState();
}

class _TasksListWidgetState extends State<TasksListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksListItem(
          taskTitle: widget.tasksList[index].name ?? "",
          isChecked: widget.tasksList[index].isDone,
          toggleCheckboxState: (p0) {
            setState(() {
              Provider.of<TasksProvider>(context,listen: false).taskDone(index);
            });
          },
        );
      },
      itemCount: widget.tasksList.length,
    );
  }
}
