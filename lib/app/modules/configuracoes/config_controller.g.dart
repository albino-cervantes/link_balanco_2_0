// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigController on _ConfigControllerBase, Store {
  Computed<bool> _$camposValidosComputed;

  @override
  bool get camposValidos =>
      (_$camposValidosComputed ??= Computed<bool>(() => super.camposValidos,
              name: '_ConfigControllerBase.camposValidos'))
          .value;

  final _$configAtom = Atom(name: '_ConfigControllerBase.config');

  @override
  ConfigModel get config {
    _$configAtom.reportRead();
    return super.config;
  }

  @override
  set config(ConfigModel value) {
    _$configAtom.reportWrite(value, super.config, () {
      super.config = value;
    });
  }

  final _$conexaoLinkLodingAtom =
      Atom(name: '_ConfigControllerBase.conexaoLinkLoding');

  @override
  bool get conexaoLinkLoding {
    _$conexaoLinkLodingAtom.reportRead();
    return super.conexaoLinkLoding;
  }

  @override
  set conexaoLinkLoding(bool value) {
    _$conexaoLinkLodingAtom.reportWrite(value, super.conexaoLinkLoding, () {
      super.conexaoLinkLoding = value;
    });
  }

  final _$setConfigAsyncAction = AsyncAction('_ConfigControllerBase.setConfig');

  @override
  Future<bool> setConfig() {
    return _$setConfigAsyncAction.run(() => super.setConfig());
  }

  final _$testarConexaoAsyncAction =
      AsyncAction('_ConfigControllerBase.testarConexao');

  @override
  Future<bool> testarConexao(BuildContext context) {
    return _$testarConexaoAsyncAction.run(() => super.testarConexao(context));
  }

  @override
  String toString() {
    return '''
config: ${config},
conexaoLinkLoding: ${conexaoLinkLoding},
camposValidos: ${camposValidos}
    ''';
  }
}
