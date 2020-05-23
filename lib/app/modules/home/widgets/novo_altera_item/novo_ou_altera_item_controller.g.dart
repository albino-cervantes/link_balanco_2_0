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
    _$itemAtom.reportRead();
    return super.item;
  }

  @override
  set item(ItemModel value) {
    _$itemAtom.reportWrite(value, super.item, () {
      super.item = value;
    });
  }

  final _$codigoBarrasValidoAtom =
      Atom(name: '_NovoOuAlteraItemControllerBase.codigoBarrasValido');

  @override
  bool get codigoBarrasValido {
    _$codigoBarrasValidoAtom.reportRead();
    return super.codigoBarrasValido;
  }

  @override
  set codigoBarrasValido(bool value) {
    _$codigoBarrasValidoAtom.reportWrite(value, super.codigoBarrasValido, () {
      super.codigoBarrasValido = value;
    });
  }

  final _$statusNovoAtom =
      Atom(name: '_NovoOuAlteraItemControllerBase.statusNovo');

  @override
  bool get statusNovo {
    _$statusNovoAtom.reportRead();
    return super.statusNovo;
  }

  @override
  set statusNovo(bool value) {
    _$statusNovoAtom.reportWrite(value, super.statusNovo, () {
      super.statusNovo = value;
    });
  }

  final _$_NovoOuAlteraItemControllerBaseActionController =
      ActionController(name: '_NovoOuAlteraItemControllerBase');

  @override
  dynamic validarCodigoBarrasDigitado(String pCodigoBarra) {
    final _$actionInfo =
        _$_NovoOuAlteraItemControllerBaseActionController.startAction(
            name:
                '_NovoOuAlteraItemControllerBase.validarCodigoBarrasDigitado');
    try {
      return super.validarCodigoBarrasDigitado(pCodigoBarra);
    } finally {
      _$_NovoOuAlteraItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setItemModel(ItemModel pItem) {
    final _$actionInfo = _$_NovoOuAlteraItemControllerBaseActionController
        .startAction(name: '_NovoOuAlteraItemControllerBase.setItemModel');
    try {
      return super.setItemModel(pItem);
    } finally {
      _$_NovoOuAlteraItemControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
item: ${item},
codigoBarrasValido: ${codigoBarrasValido},
statusNovo: ${statusNovo}
    ''';
  }
}
