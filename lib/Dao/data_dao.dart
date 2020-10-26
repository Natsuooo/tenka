import 'package:tenka_2_0_0/Entity/data.dart';
import 'dart:convert'; //json.decode
import 'package:flutter/services.dart' show rootBundle;

class DataDao {
  Future<List<Data>> getAll() async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    final List<dynamic> jsonResponse = json.decode(jsonString);
    List<Data> data = jsonResponse.isNotEmpty
        ? jsonResponse.map((item) => Data.fromDatabaseJson(item)).toList()
        : [];
    return data;
  }
}
