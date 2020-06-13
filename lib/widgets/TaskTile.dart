import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isDone;
  final String title;
  final Function checkBoxCallBack;
  final Function onLongPress;

  TaskTile({this.isDone, this.title, this.checkBoxCallBack, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: onLongPress,
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
