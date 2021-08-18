import 'dart:developer';

import 'package:thecat_atlas/app/core/dio/custom_dio.dart';
import 'package:thecat_atlas/app/models/cat_model.dart';
import 'package:thecat_atlas/app/models/pagination_model.dart';

class CatRepository {

  Future<List<CatModel>> searchAllCats(PaginationModel paginate) async {

    return CustomDio.instance.get('https://api.thecatapi.com/v1/images/search', queryParameters: {
      'has_breeds': 'true',
      'size': 'med',
      'page': paginate.page,
      'limit': paginate.limit
    })
    .then((value) {
      return (value.data as List).map((e) => CatModel.fromJson(e)).toList();
    });

    //     .then(
    // (res) => (res.data as List).map((e) => CatModel.fromJson(e)).toList());
  }
}