import 'dart:io';
import 'dart:async';

import 'package:flutterdarttrungtin/entity/Contact.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart'; //join();

class DBHelper {

  static Database? _db;

  static const String dbName = "contactdb";
  static const int dbVersion = 1;

  static const String contactTable = "contact";

  static const String idColumn = "id";
  static const String nameColumn = "name";
  static const String phoneColumn = "phone";
  static const String emailColumn = "email";
  static const String addressColumn = "address";
  static const String descriptionColumn = "description";

  Future<Database> get db async {
    if(_db != null) {
      return _db!;
    }
    else {
      _db = await initDB();
      return _db!;
    }
  }

  //async là sử lý bất đồng bộ
  initDB() async{
    // await sẽ tự lấy đường dẫn của folder mà ta đang chạy và phải thêm async
    Directory directory = await getApplicationDocumentsDirectory();
    //hàm join() dùng để tạo đường dẫn
    String path= join(directory.path, dbName);

    return openDatabase(
      path,
      //Chỉ phiên bản của database (Tạo data mới)
      version: dbVersion,
      //OnCreate để khai báo sự kiện
      onCreate: (db, version) => onCreateDB(db, version),
      //OnUpgrade dùng để tải lên phiên bản từ 1 -> 5
      //OnDowngrade dùng để tải lên phiên bản từ 5 -> 1
      onUpgrade: (db, oldVersion, newVersion) => onUpgradeDB(db, oldVersion, newVersion),
    );
  }
/*
NULL. The value is a NULL value.

INTEGER. The value is a signed integer, stored in 0, 1, 2, 3, 4, 6, or 8 bytes depending on the magnitude of the value.

REAL. The value is a floating point value, stored as an 8-byte IEEE floating point number.

TEXT. The value is a text string, stored using the database encoding (UTF-8, UTF-16BE or UTF-16LE).

BLOB. The value is a blob of data, stored exactly as it was input.
 */
  void onCreateDB(Database db, int version) async{
    await db.execute("Create Table $contactTable("
        "$idColumn integer primary key autoincrement,"
        "$nameColumn text,"
        "$phoneColumn text,"
        "$emailColumn text,"
        "$addressColumn text,"
        "$descriptionColumn text"
        ")");
  }

  void onUpgradeDB(Database db, int oldVersion, int newVersion) async{
    await db.execute("drop table $contactTable");
    onCreateDB(db, newVersion);
  }

  Future<bool> create(Contact contact) async {
    var dbClient = await db;
    return await dbClient.insert(contactTable, contact.toMap()) > 0;
  }

  Future<List<Contact>> findAll() async {
    var dbClient = await db;
    var maps = await dbClient.query(contactTable);
    List<Contact> contacts = [];
    if(maps.isNotEmpty) {
      for(var map in maps) {
        contacts.add(Contact.fromMap(map));
      }
    }
    return contacts;
  }
}
