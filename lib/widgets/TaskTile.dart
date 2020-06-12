import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text("new Task"),
        trailing: Checkbox(
          value: true,
        ));
  }
}
