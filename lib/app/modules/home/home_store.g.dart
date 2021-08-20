// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on HomeStoreBase, Store {
  final _$entitiesAtom = Atom(name: 'HomeStoreBase.entities');

  @override
  ObservableList<BreedModel> get entities {
    _$entitiesAtom.reportRead();
    return super.entities;
  }

  @override
  set entities(ObservableList<BreedModel> value) {
    _$entitiesAtom.reportWrite(value, super.entities, () {
      super.entities = value;
    });
  }

  final _$loadingAtom = Atom(name: 'HomeStoreBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$finishedAtom = Atom(name: 'HomeStoreBase.finished');

  @override
  bool get finished {
    _$finishedAtom.reportRead();
    return super.finished;
  }

  @override
  set finished(bool value) {
    _$finishedAtom.reportWrite(value, super.finished, () {
      super.finished = value;
    });
  }

  final _$isSearchNameAtom = Atom(name: 'HomeStoreBase.isSearchName');

  @override
  bool get isSearchName {
    _$isSearchNameAtom.reportRead();
    return super.isSearchName;
  }

  @override
  set isSearchName(bool value) {
    _$isSearchNameAtom.reportWrite(value, super.isSearchName, () {
      super.isSearchName = value;
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

  final _$searchBreedAsyncAction = AsyncAction('HomeStoreBase.searchBreed');

  @override
  Future<void> searchBreed() {
    return _$searchBreedAsyncAction.run(() => super.searchBreed());
  }

  final _$searchBreedByNameAsyncAction =
      AsyncAction('HomeStoreBase.searchBreedByName');

  @override
  Future<void> searchBreedByName(String name) {
    return _$searchBreedByNameAsyncAction
        .run(() => super.searchBreedByName(name));
  }

  @override
  String toString() {
    return '''
entities: ${entities},
loading: ${loading},
finished: ${finished},
isSearchName: ${isSearchName}
    ''';
  }
}
