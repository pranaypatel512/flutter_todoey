import 'package:flutter/material.dart';
import 'package:flutter_todoey/provider/task_provider.dart';
import 'package:flutter_todoey/widgets/task_list_item.dart';
import 'package:provider/provider.dart';

class TasksListWidget extends StatefulWidget {
  const TasksListWidget({super.key});

  @override
  State<TasksListWidget> createState() => _TasksListWidgetState();
}

class _TasksListWidgetState extends State<TasksListWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, value, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksListItem(
              taskTitle: value.getList[index].name ?? "",
              isChecked: value.getList[index].isDone,
              toggleCheckboxState: (p0) {
                setState(() {
                  value.taskDone(index);
                });
              },
              deleteCallback: () {
                value.deleteTask(index);
              },
            );
          },
          itemCount: value.taskCount,
        );
      },
    );
  }
}
