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
      (_$servidorValidoComputed ??= Computed<bool>(() => super.servidorValido,
              name: '_ConfigModelBase.servidorValido'))
          .value;
  Computed<bool> _$portaValidaComputed;

  @override
  bool get portaValida =>
      (_$portaValidaComputed ??= Computed<bool>(() => super.portaValida,
              name: '_ConfigModelBase.portaValida'))
          .value;
  Computed<bool> _$senhaValidaComputed;

  @override
  bool get senhaValida =>
      (_$senhaValidaComputed ??= Computed<bool>(() => super.senhaValida,
              name: '_ConfigModelBase.senhaValida'))
          .value;

  final _$servidorAtom = Atom(name: '_ConfigModelBase.servidor');

  @override
  String get servidor {
    _$servidorAtom.reportRead();
    return super.servidor;
  }

  @override
  set servidor(String value) {
    _$servidorAtom.reportWrite(value, super.servidor, () {
      super.servidor = value;
    });
  }

  final _$portaAtom = Atom(name: '_ConfigModelBase.porta');

  @override
  int get porta {
    _$portaAtom.reportRead();
    return super.porta;
  }

  @override
  set porta(int value) {
    _$portaAtom.reportWrite(value, super.porta, () {
      super.porta = value;
    });
  }

  final _$senhaAtom = Atom(name: '_ConfigModelBase.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$validarCodigoBarraAtom =
      Atom(name: '_ConfigModelBase.validarCodigoBarra');

  @override
  bool get validarCodigoBarra {
    _$validarCodigoBarraAtom.reportRead();
    return super.validarCodigoBarra;
  }

  @override
  set validarCodigoBarra(bool value) {
    _$validarCodigoBarraAtom.reportWrite(value, super.validarCodigoBarra, () {
      super.validarCodigoBarra = value;
    });
  }

  final _$_ConfigModelBaseActionController =
      ActionController(name: '_ConfigModelBase');

  @override
  dynamic setServidor(String pServidor) {
    final _$actionInfo = _$_ConfigModelBaseActionController.startAction(
        name: '_ConfigModelBase.setServidor');
    try {
      return super.setServidor(pServidor);
    } finally {
      _$_ConfigModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPorta(int pPorta) {
    final _$actionInfo = _$_ConfigModelBaseActionController.startAction(
        name: '_ConfigModelBase.setPorta');
    try {
      return super.setPorta(pPorta);
    } finally {
      _$_ConfigModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSenha(String pSenha) {
    final _$actionInfo = _$_ConfigModelBaseActionController.startAction(
        name: '_ConfigModelBase.setSenha');
    try {
      return super.setSenha(pSenha);
    } finally {
      _$_ConfigModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setValidarCodigoBarra(bool pValidarCodigoBarra) {
    final _$actionInfo = _$_ConfigModelBaseActionController.startAction(
        name: '_ConfigModelBase.setValidarCodigoBarra');
    try {
      return super.setValidarCodigoBarra(pValidarCodigoBarra);
    } finally {
      _$_ConfigModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
servidor: ${servidor},
porta: ${porta},
senha: ${senha},
validarCodigoBarra: ${validarCodigoBarra},
servidorValido: ${servidorValido},
portaValida: ${portaValida},
senhaValida: ${senhaValida}
    ''';
  }
}
