import 'package:flutter/material.dart';

class TasksListItem extends StatelessWidget {
  const TasksListItem(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.toggleCheckboxState});
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckboxState,
      ),
    );
  }
}

