import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        color: Colors.black54,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))),
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 40.0,
                child: TextField(
                  autofocus: true,
                  style: TextStyle(
                      height: 1, color: Colors.blueAccent, fontSize: 20.0),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                height: 40.0,
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20.0),
                  elevation: 8.0,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Add Task",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
