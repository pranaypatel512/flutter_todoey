import 'package:flutter/material.dart';

class TasksListItem extends StatelessWidget {
  const TasksListItem(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.toggleCheckboxState,
      required this.deleteCallback});
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) toggleCheckboxState;
  final Function() deleteCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteCallback,
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

