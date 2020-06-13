import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/TasksData.dart';
import 'package:todo/widgets/TaskTile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(builder: (context, tasksData, child) {
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
                isDone: tasksData.tasks[index].isDone,
                title: tasksData.tasks[index].name,
                checkBoxCallBack: (value) {
                  tasksData.doneTheTask(index);
                },
                onLongPress: () {
                  tasksData.deleteTask(index);
                },
              );
            },
            itemCount: tasksData.tasksCount,
          ),
        ),
      );
    });
  }
}
