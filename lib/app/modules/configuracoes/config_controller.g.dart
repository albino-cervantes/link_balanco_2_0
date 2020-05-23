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
      (_$camposValidosComputed ??= Computed<bool>(() => super.camposValidos))
          .value;

  final _$configAtom = Atom(name: '_ConfigControllerBase.config');

  @override
  ConfigModel get config {
    _$configAtom.context.enforceReadPolicy(_$configAtom);
    _$configAtom.reportObserved();
    return super.config;
  }

  @override
  set config(ConfigModel value) {
    _$configAtom.context.conditionallyRunInAction(() {
      super.config = value;
      _$configAtom.reportChanged();
    }, _$configAtom, name: '${_$configAtom.name}_set');
  }

  final _$conexaoLinkLodingAtom =
      Atom(name: '_ConfigControllerBase.conexaoLinkLoding');

  @override
  bool get conexaoLinkLoding {
    _$conexaoLinkLodingAtom.context.enforceReadPolicy(_$conexaoLinkLodingAtom);
    _$conexaoLinkLodingAtom.reportObserved();
    return super.conexaoLinkLoding;
  }

  @override
  set conexaoLinkLoding(bool value) {
    _$conexaoLinkLodingAtom.context.conditionallyRunInAction(() {
      super.conexaoLinkLoding = value;
      _$conexaoLinkLodingAtom.reportChanged();
    }, _$conexaoLinkLodingAtom, name: '${_$conexaoLinkLodingAtom.name}_set');
  }

  final _$setConfigAsyncAction = AsyncAction('setConfig');

  @override
  Future<bool> setConfig() {
    return _$setConfigAsyncAction.run(() => super.setConfig());
  }

  final _$testarConexaoAsyncAction = AsyncAction('testarConexao');

  @override
  Future<bool> testarConexao(BuildContext context) {
    return _$testarConexaoAsyncAction.run(() => super.testarConexao(context));
  }

  @override
  String toString() {
    final string =
        'config: ${config.toString()},conexaoLinkLoding: ${conexaoLinkLoding.toString()},camposValidos: ${camposValidos.toString()}';
    return '{$string}';
  }
}
