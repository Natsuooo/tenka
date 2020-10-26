import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/memo.dart';
import 'package:tenka_2_0_0/Repository/memo_repository.dart';

class MemoModel with ChangeNotifier {
  List<Memo> _allMemoList = [];
  List<Memo> get allMemoList => _allMemoList;
  // List<Memo> get memo => _allMemoList.where((item) =>  )

  final MemoRepository repo = MemoRepository();

  MemoModel() {
    _fetchAll();
  }

  void _fetchAll() async {
    _allMemoList = await repo.getAllMemo();
    notifyListeners();
  }

  // List<Memo> _memo;
  // List<Memo> get memo => _memo;

  List<Memo> _memoList = [];
  List<Memo> get memoList => _memoList;

  getMemo(int id) async {
    //これでFuture objectからList<Memo>に変換したい
    // print(_allMemoList);
    // _memoList = _allMemoList.where((item) => item.id == id).toList();

    // print(_memo);
    // notifyListeners();
    // return _memo;
    List<Memo> _memoList = await repo.getMemo(id);
    return _memoList;
    // notifyListeners();
  }

  void add(Memo memo) async {
    await repo.insertMemo(memo);
    _fetchAll();
    // notifyListeners();
  }

  void update(Memo memo) async {
    await repo.updateMemo(memo);
    _fetchAll();
    // notifyListeners();
  }

  void remove(Memo memo) async {
    await repo.deleteMemo(memo.id);
    notifyListeners();
  }
}
