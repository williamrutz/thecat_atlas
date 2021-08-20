import 'package:thecat_atlas/app/models/breed_model.dart';
import 'package:thecat_atlas/app/models/cat_model.dart';
import 'package:thecat_atlas/app/models/pagination_model.dart';
import 'package:thecat_atlas/app/repository/cat_repository.dart';

class CatService {

  final CatRepository _repository;

  CatService(this._repository);
  
  Future<List<CatModel>> searchCat(String id, PaginationModel paginationModel){
    return _repository.searchAllCats(id, paginationModel);
  }

  Future<List<BreedModel>> searchBreed(PaginationModel paginationModel){
    return _repository.searchAllBreed(paginationModel);
  }

  Future<List<BreedModel>> searchBreedByName(String name){
    return _repository.searchBreedByName(name);
  }
}