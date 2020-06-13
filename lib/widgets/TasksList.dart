import 'package:flutter/material.dart';
import 'package:todo/models/Task.dart';
import 'package:todo/widgets/TaskTile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function checkboxCallback;

  TasksList({this.tasks, this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return TaskTile(
                  isDone: tasks[index].isDone,
                  title: tasks[index].name,
                  checkBoxCallBack: (value) {
                    checkboxCallback(value, index);
                  });
            },
          )),
    );
  }
}
