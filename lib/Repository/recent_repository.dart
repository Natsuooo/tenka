import 'package:tenka_2_0_0/Dao/recent_dao.dart';

class RecentRepository {
  final recentDao = RecentDao();

  Future getRecentList() => recentDao.getRecentList();

  Future saveRecentList(List<String> recentList) =>
      recentDao.saveRecentList(recentList);
}
