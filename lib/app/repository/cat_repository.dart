import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:thecat_atlas/app/core/dio/custom_dio.dart';
import 'package:thecat_atlas/app/models/cat_model.dart';

class CatRepository {

  Future<List<CatModel>> searchAllCats() async {

    return CustomDio.instance.get('https://api.thecatapi.com/v1/images/search', queryParameters: {
      'has_breeds': 'true',
      'limit': '12'
    })
    .then(
    (res) => (res.data as List).map((e) => CatModel.fromJson(e)).toList());
  }
}