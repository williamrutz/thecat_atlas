// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailStore on _DetailStoreBase, Store {
  final _$entitiesAtom = Atom(name: '_DetailStoreBase.entities');

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

  final _$idAtom = Atom(name: '_DetailStoreBase.id');

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$loadingAtom = Atom(name: '_DetailStoreBase.loading');

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

  final _$finishedAtom = Atom(name: '_DetailStoreBase.finished');

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

  final _$initPageAsyncAction = AsyncAction('_DetailStoreBase.initPage');

  @override
  Future<void> initPage() {
    return _$initPageAsyncAction.run(() => super.initPage());
  }

  final _$searchMorePhotoAsyncAction =
      AsyncAction('_DetailStoreBase.searchMorePhoto');

  @override
  Future<void> searchMorePhoto() {
    return _$searchMorePhotoAsyncAction.run(() => super.searchMorePhoto());
  }

  @override
  String toString() {
    return '''
entities: ${entities},
id: ${id},
loading: ${loading},
finished: ${finished}
    ''';
  }
}
