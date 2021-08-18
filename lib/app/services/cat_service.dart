import 'package:thecat_atlas/app/models/cat_model.dart';
import 'package:thecat_atlas/app/models/pagination_model.dart';
import 'package:thecat_atlas/app/repository/cat_repository.dart';

class CatService {

  final CatRepository _repository;

  CatService(this._repository);
  
  Future<List<CatModel>> searchCat(PaginationModel paginationModel){
    return _repository.searchAllCats(paginationModel);
  }
}