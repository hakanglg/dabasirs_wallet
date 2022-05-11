// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$dummyListAtom =
      Atom(name: '_HomeViewModelBase.dummyList', context: context);

  @override
  ObservableList<InputModel> get dummyList {
    _$dummyListAtom.reportRead();
    return super.dummyList;
  }

  @override
  set dummyList(ObservableList<InputModel> value) {
    _$dummyListAtom.reportWrite(value, super.dummyList, () {
      super.dummyList = value;
    });
  }

  late final _$denemeListAtom =
      Atom(name: '_HomeViewModelBase.denemeList', context: context);

  @override
  ObservableList<DenemeModel> get denemeList {
    _$denemeListAtom.reportRead();
    return super.denemeList;
  }

  @override
  set denemeList(ObservableList<DenemeModel> value) {
    _$denemeListAtom.reportWrite(value, super.denemeList, () {
      super.denemeList = value;
    });
  }

  late final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase', context: context);

  @override
  void addDummyList(InputModel inputModel) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.addDummyList');
    try {
      return super.addDummyList(inputModel);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addDenemeList(DenemeModel denemeModel) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.addDenemeList');
    try {
      return super.addDenemeList(denemeModel);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dummyList: ${dummyList},
denemeList: ${denemeList}
    ''';
  }
}
