import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'moor_database.g.dart';

class Person extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get address => text()();
  TextColumn get mobile => text()();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called todos_file.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'mydatabse.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [
  Person
])
class Database extends _$Database with ChangeNotifier {
  // we tell the database where to store the data with this constructor
  Database() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  int get schemaVersion => 1;


  Future<List<PersonData>> getAllPerson() => select(person).get();
  Stream<List<PersonData>> watchAllPerson() => select(person).watch();


  Future insertTodoEntries(PersonData entry) {
    return transaction(() async {
      await into(person).insert(entry);
    });
  }

  // Future completeTodoEntries(int id) {
  //   return transaction(() async {
  //     await _completeTask(id);
  //   });
  // }
  //
  // Future deleteTodoEntries(int id) {
  //   return transaction(() async {
  //     await _deleteTask(id);
  //   });
  // }
}

