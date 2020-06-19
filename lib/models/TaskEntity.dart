import 'package:todo/database/Contract.dart';

class TaskEntity {
  //fields
  int _id;
  String _title;
  String _date;
  int _isCompleted;

  // constructors

  TaskEntity(this._title, this._date, this._isCompleted);
  TaskEntity.named(this._id, this._title, this._date, this._isCompleted);
  TaskEntity.fromMap(Map<String, dynamic> map) {
    _id = map[Contract.KnoteID];
    _title = map[Contract.KnoteTitle];
    _date = map[Contract.KnoteDate];
    _isCompleted = map[Contract.KIsCompleted];
  }

  //setter and getter
  int get isCompleted => _isCompleted;
  set isCompleted(int value) {
    _isCompleted = value;
  }

  String get data => _date;
  set data(String value) {
    _date = value;
  }

  String get title => _title;
  set title(String value) {
    _title = value;
  }

  int get id => _id;

  //toString
  @override
  String toString() {
    return 'TaskEntity{_id: $_id, _title: $_title, _isCompleted: $_isCompleted}';
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> newMap = {};
    if (_id != null) {
      newMap[Contract.KnoteID] = _id;
    }
    newMap[Contract.KnoteTitle] = _title;
    newMap[Contract.KnoteDate] = _date;
    newMap[Contract.KIsCompleted] = _isCompleted;
    return newMap;
  }
}
