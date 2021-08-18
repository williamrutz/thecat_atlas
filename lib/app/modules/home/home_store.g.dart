// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$entitiesAtom = Atom(name: 'HomeStoreBase.entities');

  @override
  ObservableList<CatModel> get entities {
    _$entitiesAtom.reportRead();
    return super.entities;
  }

  @override
  set entities(ObservableList<CatModel> value) {
    _$entitiesAtom.reportWrite(value, super.entities, () {
      super.entities = value;
    });
  }

  final _$initPageAsyncAction = AsyncAction('HomeStoreBase.initPage');

  @override
  Future<void> initPage() {
    return _$initPageAsyncAction.run(() => super.initPage());
  }

  final _$loadMoreAsyncAction = AsyncAction('HomeStoreBase.loadMore');

  @override
  Future<void> loadMore() {
    return _$loadMoreAsyncAction.run(() => super.loadMore());
  }

  final _$searchCatsAsyncAction = AsyncAction('HomeStoreBase.searchCats');

  @override
  Future<dynamic> searchCats() {
    return _$searchCatsAsyncAction.run(() => super.searchCats());
  }

  @override
  String toString() {
    return '''
entities: ${entities}
    ''';
  }
}
