// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novo_ou_altera_item_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NovoOuAlteraItemController on _NovoOuAlteraItemControllerBase, Store {
  final _$itemAtom = Atom(name: '_NovoOuAlteraItemControllerBase.item');

  @override
  ItemModel get item {
    _$itemAtom.context.enforceReadPolicy(_$itemAtom);
    _$itemAtom.reportObserved();
    return super.item;
  }

  @override
  set item(ItemModel value) {
    _$itemAtom.context.conditionallyRunInAction(() {
      super.item = value;
      _$itemAtom.reportChanged();
    }, _$itemAtom, name: '${_$itemAtom.name}_set');
  }

  final _$codigoBarrasValidoAtom =
      Atom(name: '_NovoOuAlteraItemControllerBase.codigoBarrasValido');

  @override
  bool get codigoBarrasValido {
    _$codigoBarrasValidoAtom.context
        .enforceReadPolicy(_$codigoBarrasValidoAtom);
    _$codigoBarrasValidoAtom.reportObserved();
    return super.codigoBarrasValido;
  }

  @override
  set codigoBarrasValido(bool value) {
    _$codigoBarrasValidoAtom.context.conditionallyRunInAction(() {
      super.codigoBarrasValido = value;
      _$codigoBarrasValidoAtom.reportChanged();
    }, _$codigoBarrasValidoAtom, name: '${_$codigoBarrasValidoAtom.name}_set');
  }

  final _$statusNovoAtom =
      Atom(name: '_NovoOuAlteraItemControllerBase.statusNovo');

  @override
  bool get statusNovo {
    _$statusNovoAtom.context.enforceReadPolicy(_$statusNovoAtom);
    _$statusNovoAtom.reportObserved();
    return super.statusNovo;
  }

  @override
  set statusNovo(bool value) {
    _$statusNovoAtom.context.conditionallyRunInAction(() {
      super.statusNovo = value;
      _$statusNovoAtom.reportChanged();
    }, _$statusNovoAtom, name: '${_$statusNovoAtom.name}_set');
  }

  final _$_NovoOuAlteraItemControllerBaseActionController =
      ActionController(name: '_NovoOuAlteraItemControllerBase');

  @override
  dynamic validarCodigoBarrasDigitado(String pCodigoBarra) {
    final _$actionInfo =
        _$_NovoOuAlteraItemControllerBaseActionController.startAction();
    try {
      return super.validarCodigoBarrasDigitado(pCodigoBarra);
    } finally {
      _$_NovoOuAlteraItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setItemModel(ItemModel pItem) {
    final _$actionInfo =
        _$_NovoOuAlteraItemControllerBaseActionController.startAction();
    try {
      return super.setItemModel(pItem);
    } finally {
      _$_NovoOuAlteraItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'item: ${item.toString()},codigoBarrasValido: ${codigoBarrasValido.toString()},statusNovo: ${statusNovo.toString()}';
    return '{$string}';
  }
}
