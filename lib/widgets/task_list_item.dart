import 'package:flutter/material.dart';

class TasksListItem extends StatefulWidget {
  TasksListItem({super.key, required this.text});
  String text;

  @override
  State<TasksListItem> createState() => _TasksListItemState();
}

class _TasksListItemState extends State<TasksListItem> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.text,
        style: TextStyle(
            decoration: isChecked ?? false
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: TaskCheckBox(
        checkState: isChecked,
        toggleCheckboxState: (bool? checkBoxState) {
          setState(() {
            isChecked = checkBoxState;
          });
        },
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
