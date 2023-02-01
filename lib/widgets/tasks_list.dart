import 'package:flutter/material.dart';

import '../models/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Get Butter'),
    Task(name: 'Get Jam'),
    Task(name: 'Get Bread'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: tasks[index].isDone,
            title: tasks[index].name,
            toggleCheckbox: (checkboxValue) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
