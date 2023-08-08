

import 'package:flutter/material.dart';

class TasksListItem extends StatelessWidget {
  TasksListItem({required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}
