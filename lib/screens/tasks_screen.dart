import 'package:flutter/material.dart';
import 'package:flutter_todoey/model/task.dart';
import 'package:flutter_todoey/screens/add_tasks_screen.dart';
import 'package:flutter_todoey/widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  List<Task> tasksList = [
    Task(name: 'Buy Cloths'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Veg')
  ];

  TasksScreen({super.key});
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  Widget buildBottomSheetContent(BuildContext context) {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Todoey'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.only(
              top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30.0,
                child: Icon(
                  Icons.list,
                  size: 30.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Todoey',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w700),
              ),
              Text(
                '12 Tasks',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10.0))),
          child: TasksListWidget(tasksList:widget.tasksList),
        ))
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen())));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
