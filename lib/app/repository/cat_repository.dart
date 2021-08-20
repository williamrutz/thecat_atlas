import 'dart:developer';

import 'package:thecat_atlas/app/core/dio/custom_dio.dart';
import 'package:thecat_atlas/app/models/breed_model.dart';
import 'package:thecat_atlas/app/models/cat_model.dart';
import 'package:thecat_atlas/app/models/pagination_model.dart';

class CatRepository {

  Future<List<CatModel>> searchAllCats(String id, PaginationModel paginate) async {

    return CustomDio.authInstance.get('https://api.thecatapi.com/v1/images/search', queryParameters: {
      'breed_ids': id,
      'page': paginate.page,
      'limit': paginate.limit
    })
    .then((res) {
      return (res.data as List).map((e) => CatModel.fromJson(e)).toList();
    });

  }

  Future<List<BreedModel>> searchAllBreed(PaginationModel paginate) async {

    return CustomDio.authInstance.get('https://api.thecatapi.com/v1/breeds', queryParameters: {
      'attach_breed': '1',
      'page': paginate.page,
      'limit': paginate.limit
    })
    .then((res) {
      List rest = (res.data as List);
      return rest.map((e){     
        return BreedModel.fromJson(e);
      }).toList();
      // return (res.data as List).map((e) => BreedModel.fromJson(e)).toList();
    });

  }

  Future<List<BreedModel>> searchBreedByName(String name) async {

    return CustomDio.authInstance.get('https://api.thecatapi.com/v1/breeds/search', queryParameters: {
      'q': name
    })
    .then((res) {
      List rest = (res.data as List);
      return rest.map((e){     
        return BreedModel.fromJson(e);
      }).toList();
      // return (res.data as List).map((e) => BreedModel.fromJson(e)).toList();
    });

  }
}