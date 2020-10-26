import 'package:tenka_2_0_0/Entity/data.dart';
import 'package:tenka_2_0_0/Dao/data_dao.dart';

class DataRepository {
  final dataDao = DataDao();

  Future getAllData() => dataDao.getAll();
}
