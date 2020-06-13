import 'dart:collection';

import 'package:flutter/material.dart';

import 'models/Task.dart';

class TasksData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "call ahmed", isDone: false),
    Task(name: "call khalid", isDone: false),
    Task(name: "do the next", isDone: false),
  ];

  int get tasksCount {
    return _tasks.length;
  }

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void doneTheTask(int index) {
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }
}
