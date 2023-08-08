import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Add Task',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
          ),
          Padding(padding: EdgeInsets.all(10.0), child: TextField()),
          FilledButton(onPressed: () {}, child: Text('Add')),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
