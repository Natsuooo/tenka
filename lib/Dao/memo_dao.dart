import 'package:tenka_2_0_0/Service/database.dart';
import 'package:tenka_2_0_0/Entity/memo.dart';

class MemoDao {
  final dbProvider = DatabaseService.dbProvider;
  final tableName = DatabaseService.memoTableName;

  Future<List<Memo>> getAllMemo() async {
    final db = await dbProvider.database;
    List<Map<String, dynamic>> result = await db.query(tableName);
    List<Memo> memos = result.isNotEmpty
        ? result.map((item) => Memo.fromDatabaseJson(item)).toList()
        : [];
    return memos;
  }

  Future<dynamic> getMemo(int id) async {
    final db = await dbProvider.database;
    List<Map<String, dynamic>> result =
        await db.query(tableName, where: "id = ?", whereArgs: [id], limit: 1);
    List<Memo> memo = result.isNotEmpty
        ? result.map((item) => Memo.fromDatabaseJson(item)).toList()
        : [];
    return memo;
  }

  Future<int> create(Memo memo) async {
    final db = await dbProvider.database;
    var result = db.insert(tableName, memo.toDatabaseJson());
    return result;
  }

  Future<int> update(Memo memo) async {
    final db = await dbProvider.database;
    var result = await db.update(tableName, memo.toDatabaseJson(),
        where: "id = ?", whereArgs: [memo.id]);
    return result;
  }

  Future<int> delete(int id) async {
    final db = await dbProvider.database;
    var result =
        await db.delete(tableName, where: 'data_id = ?', whereArgs: [id]);
    return result;
  }
}
