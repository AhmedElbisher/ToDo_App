import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo/database/DatabaseHelper.dart';

import 'models/TaskEntity.dart';

class TasksData extends ChangeNotifier {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<TaskEntity> _tasks = [];

  int get tasksCount {
    return _tasks.length;
  }

  void addTask(TaskEntity task) async {
    await databaseHelper.insert(task);
    fetchTasks();
  }

  void fetchTasks() async {
    _tasks = databaseHelper
        .getTaskEntityListFromMapList(await databaseHelper.fetch());
    notifyListeners();
  }

  void flipTaskStatus(int index) async {
    int taskStatus = _tasks[index].isCompleted;
    if (taskStatus == 1)
      taskStatus = 0;
    else if (taskStatus == 0) taskStatus = 1;
    _tasks[index].isCompleted = taskStatus;
    databaseHelper.update(_tasks[index]);
    fetchTasks();
  }

  void deleteTask(int index) async {
    await databaseHelper.delete(_tasks[index]);
    fetchTasks();
  }

  UnmodifiableListView<TaskEntity> get tasks {
    return UnmodifiableListView(_tasks);
  }
}
