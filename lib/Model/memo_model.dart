import 'package:flutter/material.dart';
import 'package:tenka_2_0_0/Entity/memo.dart';
import 'package:tenka_2_0_0/Repository/memo_repository.dart';

class MemoModel with ChangeNotifier {
  List<Memo> _memoList = [];
  List<Memo> get memoList => _memoList;

  final MemoRepository repo = MemoRepository();
}
