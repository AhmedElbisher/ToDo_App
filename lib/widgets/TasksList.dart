import 'package:flutter/material.dart';
import 'package:todo/models/Task.dart';
import 'package:todo/widgets/TaskTile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  static List<Task> tasks = [
    Task(name: "call ahmed", isDone: false),
    Task(name: "call khalid", isDone: false),
    Task(name: "do the next", isDone: false),
  ];

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
          itemBuilder: (context, index) {
            return TaskTile(
              isDone: tasks[index].isDone,
              title: tasks[index].name,
              checkBoxCallBack: (value) {
                setState(() {
                  tasks[index].toggleDoneState();
                });
              },
            );
          },
          itemCount: tasks.length,
        ),
      ),
    );
  }
}
