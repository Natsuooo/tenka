import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/memo.dart';
import 'package:tenka_2_0_0/Repository/memo_repository.dart';

class MemoModel with ChangeNotifier {
  List<Memo> _memoList = [];
  List<Memo> get memoList => _memoList;

  final MemoRepository repo = MemoRepository();

  getMemo(int id) async {
    _memoList = await repo.getMemo(id);
    // print("$_memoList getmemo");
    // return _memoList;
    // notifyListeners();
  }

  void add(Memo memo) async {
    await repo.insertMemo(memo);
    notifyListeners();
  }

  void update(Memo memo) async {
    await repo.updateMemo(memo);
    notifyListeners();
  }

  void remove(Memo memo) async {
    await repo.deleteMemo(memo.id);
    notifyListeners();
  }
}
