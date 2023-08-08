import 'package:flutter/material.dart';
import 'package:flutter_todoey/widgets/task_list_item.dart';

class TasksListWidget extends StatelessWidget {
  const TasksListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TasksListItem(
          text: 'This is title',
        )
      ],
    );
  }
}
