import 'package:flutter/material.dart';
import 'package:todo/widgets/TaskTile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(children: [TaskTile(), TaskTile(), TaskTile()]),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
      ),
    );
  }
}
