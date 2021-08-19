import 'package:mobx/mobx.dart';

import 'package:thecat_atlas/app/models/cat_model.dart';
import 'package:thecat_atlas/app/models/pagination_model.dart';
import 'package:thecat_atlas/app/services/cat_service.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final CatService _catService;
  int _page = 1;
  int _limit = 12;
  bool isFetchData = false;

  HomeStoreBase(
    this._catService,
  );

  @observable
  ObservableList<CatModel> entities = ObservableList.of([]);

  @observable
  bool loading = false;

  @action
  Future<void> initPage() async {
    searchCats();
  }

  @action
  Future<void> loadMore() async {
    if(isFetchData){
      return;
    }

    isFetchData = true;
    loading = true;

    var paginate = PaginationModel(page: _page, limit: _limit);
    var data = await _catService.searchCat(paginate);
    data.forEach((element) => entities.add(element));

    loading = false;
    isFetchData = false;
    _page++;
  }

  @action
  Future searchCats() async {
    if(isFetchData){
      return;
    }

    isFetchData = true;
    loading = true;

    var paginate = PaginationModel(page: _page, limit: _limit);
    var data = await _catService.searchCat(paginate);
    entities.addAll(data);

    loading = true;
    isFetchData = false;
    _page++;

  }
}
