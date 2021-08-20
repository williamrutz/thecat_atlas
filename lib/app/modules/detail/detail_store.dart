import 'package:mobx/mobx.dart';
import 'package:thecat_atlas/app/models/cat_model.dart';
import 'package:thecat_atlas/app/models/pagination_model.dart';
import 'package:thecat_atlas/app/services/cat_service.dart';

part 'detail_store.g.dart';

class DetailStore = _DetailStoreBase with _$DetailStore;

abstract class _DetailStoreBase with Store {
  final CatService _catService;
  int _page = 1;
  int _limit = 24;
  bool isFetchData = false;

  _DetailStoreBase(
    this._catService,
  );

  @observable
  ObservableList<CatModel> entities = ObservableList.of([]);

  @observable
  String id = '';

  @observable
  bool loading = false;

  @observable
  bool finished = false;

  @action
  Future<void> initPage() async {
    searchMorePhoto();
  }

  @action
  Future<void> searchMorePhoto() async {
    if (isFetchData) {
      return;
    }

    isFetchData = true;
    loading = true;

    var paginate = PaginationModel(page: _page, limit: _limit);
    var data = await _catService.searchCat(id, paginate);
    if (data.length > 0) {
      entities.addAll(data);
    } else {
      finished = true;
    }

    loading = true;
    isFetchData = false;
    _page++;
  }
}
