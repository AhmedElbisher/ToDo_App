import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isDone;
  final String title;
  final Function checkBoxCallBack;

  TaskTile({this.isDone, this.title, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style:
              TextStyle(decoration: isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isDone,
          onChanged: checkBoxCallBack,
        ));
  }
}
