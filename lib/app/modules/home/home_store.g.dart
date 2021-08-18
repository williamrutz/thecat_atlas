// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$catFutureAtom = Atom(name: 'HomeStoreBase.catFuture');

  @override
  ObservableFuture<List<CatModel>>? get catFuture {
    _$catFutureAtom.reportRead();
    return super.catFuture;
  }

  @override
  set catFuture(ObservableFuture<List<CatModel>>? value) {
    _$catFutureAtom.reportWrite(value, super.catFuture, () {
      super.catFuture = value;
    });
  }

  final _$initPageAsyncAction = AsyncAction('HomeStoreBase.initPage');

  @override
  Future<void> initPage() {
    return _$initPageAsyncAction.run(() => super.initPage());
  }

  final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase');

  @override
  void searchCats() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.searchCats');
    try {
      return super.searchCats();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
catFuture: ${catFuture}
    ''';
  }
}
