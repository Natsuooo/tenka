import 'package:tenka_2_0_0/Dao/star_dao.dart';

class StarRepository {
  final starDao = StarDao();

  Future getStarList() => starDao.getStarList();

  Future addStarList(List<String> starList) => starDao.addStarList(starList);
}
