import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo/database/Contract.dart';
import 'package:todo/models/TaskEntity.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;

  DatabaseHelper._getInstance();

  //Singletone
  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._getInstance();
    }
    return _databaseHelper;
  }

  //singelton
  Future<Database> get database async {
    if (_database == null) {
      _database = await initDatabase();
    }
    return _database;
  }

  Future<Database> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + Contract.KnotesDatabase;
    return openDatabase(path, version: 1, onCreate: _creatDatabase);
  }

  void _creatDatabase(Database db, int newVersion) async {
    await db.execute(Contract.Kcreate_notesTable);
  }

  Future<List<Map<String, dynamic>>> fetch() async {
    Database db = await database;
    return await db.query(Contract.KnotesTable);
  }

  Future<int> insert(TaskEntity task) async {
    Database db = await database;
    return await db.insert(Contract.KnotesTable, task.toMap());
  }

  Future<int> delete(TaskEntity task) async {
    Database db = await database;
    return await db.delete(Contract.KnotesTable,
        where: "${Contract.KnoteID} = ?", whereArgs: [task.id]);
  }

  Future<int> update(TaskEntity task) async {
    Database db = await database;
    return await db.update(Contract.KnotesTable, task.toMap(),
        where: "${Contract.KnoteID} = ?", whereArgs: [task.id]);
  }

  List<TaskEntity> getTaskEntityListFromMapList(
      List<Map<String, dynamic>> map) {
    List<TaskEntity> entities = [];
    for (var entityMap in map) {
      entities.add(TaskEntity.fromMap(entityMap));
    }
    return entities;
  }
}
