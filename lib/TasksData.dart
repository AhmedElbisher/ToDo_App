import 'package:flutter/material.dart';

import 'models/Task.dart';

class TasksData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "call ahmed", isDone: false),
    Task(name: "call khalid", isDone: false),
    Task(name: "do the next", isDone: false),
  ];

  int get tasksCount {
    return tasks.length;
  }
}
