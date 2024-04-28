import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseInstance {
  final String _databaseName = "db_quran.db";
  final int _versionDatabse = 1;

  // Quran Table
  final String table = "quran";
  final String id = "id";
  final String firstName = "first_name";
  final String lastName = "last_name";
  final String email = "email";
  final String createdAt = "created_at";
  final String updatedAt = "updated_at";

  Database? _database;

  Future<Database> database() async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, _databaseName);
    return openDatabase(path, version: _versionDatabse, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE $table ($id INTEGER PRIMARY KEY, $firstName TEXT, $lastName TEXT, $email TEXT NULL, $createdAt TEXT NULL, $updatedAt TEXT NULL)');
  }

  Future<int> createUser(Map<String, dynamic> row) async {
    final query = await _database!.insert(table, row);
    return query;
  }

  Future getUser() async {
    _database ??= await database();
    final query = await _database!.query(table);
    print("hasil $query");
    return query;
  }
}
