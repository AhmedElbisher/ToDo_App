class Task {
  bool isDone;
  String name;
  Task({this.isDone, this.name});
  void toggleDoneState() {
    isDone = !isDone;
  }
}
