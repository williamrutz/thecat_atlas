import 'package:mobx/mobx.dart';
import 'package:thecat_atlas/app/models/breed_model.dart';

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
  ObservableList<BreedModel> entities = ObservableList.of([]);
  List<BreedModel> breedOriginal = [];

  @observable
  bool loading = false;

  @observable
  bool finished = false;

  @observable
  bool isSearchName = false;

  @action
  Future<void> initPage() async {
    searchBreed();
  }

  @action
  Future<void> loadMore() async {
    if (isFetchData) {
      return;
    }

    isFetchData = true;
    loading = true;

    var paginate = PaginationModel(page: _page, limit: _limit);
    var data = await _catService.searchBreed(paginate);
    if (data.length > 0) {
      data.forEach((element) {
        if (element.image != null) {
          if (element.image?.url != null && element.image?.url != '') {
            entities.add(element);
            breedOriginal.add(element);

          }
        }
      });
    } else {
      finished = true;
    }

    loading = false;
    isFetchData = false;
    _page++;
  }

  @action
  Future<void> searchBreed() async {
    if (isFetchData) {
      return;
    }

    isFetchData = true;
    loading = true;

    var paginate = PaginationModel(page: _page, limit: _limit);
    var data = await _catService.searchBreed(paginate);
    if (data.length > 0) {
      data.forEach((element) {
        if (element.image != null) {
          if (element.image?.url != null && element.image?.url != '') {
            entities.add(element);
            breedOriginal.add(element);
          }
        }
      });
    } else {
      finished = true;
    }

    loading = false;
    isFetchData = false;
    _page++;
  }

  @action
  Future<void> searchBreedByName(String name) async {
    var breeds = breedOriginal;

    if (name.trim().length > 0) {
      isSearchName = true;
      loading = true;

      entities.clear();
      breeds = breedOriginal.where((element) => element.name.toLowerCase().contains(name.toLowerCase())).toList();
      entities.addAll(breeds);
      
      loading = false;
    }else{
      entities.clear();
      entities.addAll(breedOriginal);
      isSearchName = false;
    }
  }
}
