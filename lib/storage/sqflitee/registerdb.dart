import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //create database
  // OpenDb - user defined method to create db
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('register', version: 1,
        onCreate: (sql.Database db, int version) async {
          await createTable(db);
        });
  }

  //create Table
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE register(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       username TEXT,
       password TEXT,
       email TEXT
      )""");
  }

// insert data to database
  static Future<int> create_register(String cname, String cphone,String umail) async {
    final db = await SQLHelper.OpenDb(); // to open database
    final data = {"username": cname, "password": cphone,"email":umail};
    final id = db.insert('register', data);
    return id;
  }

  static checklogin(String email, password) {}
}