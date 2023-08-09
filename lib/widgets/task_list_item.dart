import 'package:flutter/material.dart';

class TasksListItem extends StatelessWidget {
  const TasksListItem(
      {super.key, required this.taskTitle, required this.isChecked});
  final String taskTitle;
  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ?? false
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {},
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox(
      {super.key, required this.checkState, this.toggleCheckboxState});

  final bool? checkState;
  final Function(bool?)? toggleCheckboxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkState,
      onChanged: toggleCheckboxState,
    );
  }
}
