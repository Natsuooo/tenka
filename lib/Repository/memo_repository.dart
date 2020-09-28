import 'package:tenka_2_0_0/Dao/memo_dao.dart';
import 'package:tenka_2_0_0/Entity/memo.dart';

class MemoRepository {
  final memoDao = MemoDao();

  Future getMemo(int id) => memoDao.getMemo(id);
  Future insertMemo(Memo memo) => memoDao.create(memo);
  Future updateMemo(Memo memo) => memoDao.update(memo);
  Future deleteMemo(int id) => memoDao.delete(id);
}
