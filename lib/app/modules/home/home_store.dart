import 'package:mobx/mobx.dart';
import 'package:thecat_atlas/app/models/breed_model.dart';

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
  ObservableList<BreedModel> entities = ObservableList.of([]);

  @observable
  bool loading = false;

  @observable
  bool finished = false;

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
    if (isFetchData) {
      return;
    }

    if (name.trim().length > 0) {
      isFetchData = true;
      loading = true;

      var data = await _catService.searchBreedByName(name.trim().toLowerCase());
      if (data.length > 0) {
        entities.clear();
        data.forEach((element) {
          if (element.image != null) {
            if (element.image?.url != null && element.image?.url != '') {
              entities.add(element);
            }
          }
        });
      } else {
        finished = true;
      }

      loading = false;
      isFetchData = false;
    }
  }
}
