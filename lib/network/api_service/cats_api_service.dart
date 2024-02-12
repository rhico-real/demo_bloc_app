import 'dart:convert';

import 'package:demo/network/api_models/cats_model.dart';
import 'package:dio/dio.dart';

class CatsApiService {
  final dio = Dio();

  Future<List<Cats>> fetchCats() async {
    final response = await dio.get("https://cat-fact.herokuapp.com/facts");
    List<Cats> listCats = (response.data as List<dynamic>).map((element) {
      return Cats.fromJson(element as Map<String, dynamic>);
    }).toList();

    return listCats;
  }
}
