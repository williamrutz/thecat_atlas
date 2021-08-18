import 'package:mobx/mobx.dart';

import 'package:thecat_atlas/app/models/cat_model.dart';
import 'package:thecat_atlas/app/services/cat_service.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  
  final CatService _catService;

  HomeStoreBase(
    this._catService,
  );

  @observable
  ObservableFuture<List<CatModel>>? catFuture;

  @action
  Future<void> initPage() async{
    searchCats();
  }

  @action
  void searchCats(){
    catFuture = ObservableFuture(_catService.searchCat());
  }

}
