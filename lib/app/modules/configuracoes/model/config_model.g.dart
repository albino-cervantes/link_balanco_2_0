// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ConfigModelAdapter extends TypeAdapter<ConfigModel> {
  @override
  final typeId = 0;

  @override
  ConfigModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ConfigModel()
      ..servidor = fields[0] as String
      ..porta = fields[1] as int
      ..senha = fields[2] as String
      ..validarCodigoBarra = fields[3] as bool;
  }

  @override
  void write(BinaryWriter writer, ConfigModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.servidor)
      ..writeByte(1)
      ..write(obj.porta)
      ..writeByte(2)
      ..write(obj.senha)
      ..writeByte(3)
      ..write(obj.validarCodigoBarra);
  }
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigModel on _ConfigModelBase, Store {
  Computed<bool> _$servidorValidoComputed;

  @override
  bool get servidorValido =>
      (_$servidorValidoComputed ??= Computed<bool>(() => super.servidorValido))
          .value;
  Computed<bool> _$portaValidaComputed;

  @override
  bool get portaValida =>
      (_$portaValidaComputed ??= Computed<bool>(() => super.portaValida)).value;
  Computed<bool> _$senhaValidaComputed;

  @override
  bool get senhaValida =>
      (_$senhaValidaComputed ??= Computed<bool>(() => super.senhaValida)).value;

  final _$servidorAtom = Atom(name: '_ConfigModelBase.servidor');

  @override
  String get servidor {
    _$servidorAtom.context.enforceReadPolicy(_$servidorAtom);
    _$servidorAtom.reportObserved();
    return super.servidor;
  }

  @override
  set servidor(String value) {
    _$servidorAtom.context.conditionallyRunInAction(() {
      super.servidor = value;
      _$servidorAtom.reportChanged();
    }, _$servidorAtom, name: '${_$servidorAtom.name}_set');
  }

  final _$portaAtom = Atom(name: '_ConfigModelBase.porta');

  @override
  int get porta {
    _$portaAtom.context.enforceReadPolicy(_$portaAtom);
    _$portaAtom.reportObserved();
    return super.porta;
  }

  @override
  set porta(int value) {
    _$portaAtom.context.conditionallyRunInAction(() {
      super.porta = value;
      _$portaAtom.reportChanged();
    }, _$portaAtom, name: '${_$portaAtom.name}_set');
  }

  final _$senhaAtom = Atom(name: '_ConfigModelBase.senha');

  @override
  String get senha {
    _$senhaAtom.context.enforceReadPolicy(_$senhaAtom);
    _$senhaAtom.reportObserved();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.context.conditionallyRunInAction(() {
      super.senha = value;
      _$senhaAtom.reportChanged();
    }, _$senhaAtom, name: '${_$senhaAtom.name}_set');
  }

  final _$validarCodigoBarraAtom =
      Atom(name: '_ConfigModelBase.validarCodigoBarra');

  @override
  bool get validarCodigoBarra {
    _$validarCodigoBarraAtom.context
        .enforceReadPolicy(_$validarCodigoBarraAtom);
    _$validarCodigoBarraAtom.reportObserved();
    return super.validarCodigoBarra;
  }

  @override
  set validarCodigoBarra(bool value) {
    _$validarCodigoBarraAtom.context.conditionallyRunInAction(() {
      super.validarCodigoBarra = value;
      _$validarCodigoBarraAtom.reportChanged();
    }, _$validarCodigoBarraAtom, name: '${_$validarCodigoBarraAtom.name}_set');
  }

  final _$_ConfigModelBaseActionController =
      ActionController(name: '_ConfigModelBase');

  @override
  dynamic setServidor(String pServidor) {
    final _$actionInfo = _$_ConfigModelBaseActionController.startAction();
    try {
      return super.setServidor(pServidor);
    } finally {
      _$_ConfigModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPorta(int pPorta) {
    final _$actionInfo = _$_ConfigModelBaseActionController.startAction();
    try {
      return super.setPorta(pPorta);
    } finally {
      _$_ConfigModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSenha(String pSenha) {
    final _$actionInfo = _$_ConfigModelBaseActionController.startAction();
    try {
      return super.setSenha(pSenha);
    } finally {
      _$_ConfigModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setValidarCodigoBarra(bool pValidarCodigoBarra) {
    final _$actionInfo = _$_ConfigModelBaseActionController.startAction();
    try {
      return super.setValidarCodigoBarra(pValidarCodigoBarra);
    } finally {
      _$_ConfigModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'servidor: ${servidor.toString()},porta: ${porta.toString()},senha: ${senha.toString()},validarCodigoBarra: ${validarCodigoBarra.toString()},servidorValido: ${servidorValido.toString()},portaValida: ${portaValida.toString()},senhaValida: ${senhaValida.toString()}';
    return '{$string}';
  }
}
