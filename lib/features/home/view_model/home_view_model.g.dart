// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$inputListAtom =
      Atom(name: '_HomeViewModelBase.inputList', context: context);

  @override
  ObservableList<InputModel> get inputList {
    _$inputListAtom.reportRead();
    return super.inputList;
  }

  @override
  set inputList(ObservableList<InputModel> value) {
    _$inputListAtom.reportWrite(value, super.inputList, () {
      super.inputList = value;
    });
  }

  late final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase', context: context);

  @override
  void dummyVoid() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.dummyVoid');
    try {
      return super.dummyVoid();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addInputList(InputModel inputModel) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.addInputList');
    try {
      return super.addInputList(inputModel);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void returnThisMonth() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.returnThisMonth');
    try {
      return super.returnThisMonth();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
inputList: ${inputList}
    ''';
  }
}
