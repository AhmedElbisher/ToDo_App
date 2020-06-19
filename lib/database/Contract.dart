class Contract {
  static const String KnotesDatabase = "notesDatabase";
  static const String KnotesTable = "notesTable";
  static const String KnoteID = "id";
  static const String KnoteTitle = "noteTitle";
  static const String KnoteDate = "noteDate";
  static const String KIsCompleted = "isCompleted";

  static const String Kcreate_notesTable =
      "CREATE TABLE $KnotesTable ($KnoteID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,$KnoteTitle TEXT,$KnoteDate TEXT,$KIsCompleted	INTEGER NOT NULL DEFAULT 0)";
}
