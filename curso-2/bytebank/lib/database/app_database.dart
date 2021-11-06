import 'package:bytebank/dao/contact_dao.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//async await
Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'bytebank.db');
  return openDatabase(
    path,
    onCreate: (db, version) {
      db.execute(ContactDao.tableSql);
    },
    version: 1,
    // onDowngrade: onDatabaseDowngradeDelete,
  );
}

//OLD
// Future<Database> createDatabase() {
//   return getDatabasesPath().then((dbPath) {
//     final String path = join(dbPath, 'bytebank.db');
//     return openDatabase(
//       path,
//       onCreate: (db, version) {
//         db.execute('CREATE TABLE contacts('
//             'id INTEGER PRIMARY KEY, '
//             'name TEXT, '
//             'account_number INTEGER)');
//       },
//       version: 1,
//      // onDowngrade: onDatabaseDowngradeDelete,
//     );
//   });
// }
