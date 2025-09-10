import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class MyDatabase{
   Future<Database> initDB() async{
     String path = join(await getDatabasesPath(),'my_database.db');
     Database db= await openDatabase(
         path,
        version: 1,
       onCreate: (db, version){
           db.execute('''
              CREATE TABLE DATABASE(
                ID INTEGER PRIMARY KEY,
                NAME TEXT,
                AGE INTEGER
              ) 
           ''');
       },
     );
     return db;
   }
 }