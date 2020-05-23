// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$indexItemSelecionadoAtom =
      Atom(name: '_HomeControllerBase.indexItemSelecionado');

  @override
  int get indexItemSelecionado {
    _$indexItemSelecionadoAtom.context
        .enforceReadPolicy(_$indexItemSelecionadoAtom);
    _$indexItemSelecionadoAtom.reportObserved();
    return super.indexItemSelecionado;
  }

  @override
  set indexItemSelecionado(int value) {
    _$indexItemSelecionadoAtom.context.conditionallyRunInAction(() {
      super.indexItemSelecionado = value;
      _$indexItemSelecionadoAtom.reportChanged();
    }, _$indexItemSelecionadoAtom,
        name: '${_$indexItemSelecionadoAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic setIndexItemSelecionado(int pIndex) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setIndexItemSelecionado(pIndex);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic adicionarItem(ItemModel pItem) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.adicionarItem(pItem);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'indexItemSelecionado: ${indexItemSelecionado.toString()}';
    return '{$string}';
  }
}
