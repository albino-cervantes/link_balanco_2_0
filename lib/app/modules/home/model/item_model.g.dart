// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemModelAdapter extends TypeAdapter<ItemModel> {
  @override
  final typeId = 1;

  @override
  ItemModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ItemModel()
      ..codigoBarra = fields[0] as String
      ..qtd = fields[1] as double
      ..dataHoraLeitura = fields[2] as DateTime
      ..descricao = fields[3] as String;
  }

  @override
  void write(BinaryWriter writer, ItemModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.codigoBarra)
      ..writeByte(1)
      ..write(obj.qtd)
      ..writeByte(2)
      ..write(obj.dataHoraLeitura)
      ..writeByte(3)
      ..write(obj.descricao);
  }
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ItemModel on _ItemModelBase, Store {
  Computed<String> _$dataHoraLeituraDisplayComputed;

  @override
  String get dataHoraLeituraDisplay => (_$dataHoraLeituraDisplayComputed ??=
          Computed<String>(() => super.dataHoraLeituraDisplay,
              name: '_ItemModelBase.dataHoraLeituraDisplay'))
      .value;
  Computed<bool> _$codigoBarraValidoComputed;

  @override
  bool get codigoBarraValido => (_$codigoBarraValidoComputed ??= Computed<bool>(
          () => super.codigoBarraValido,
          name: '_ItemModelBase.codigoBarraValido'))
      .value;
  Computed<bool> _$qtdValidaComputed;

  @override
  bool get qtdValida =>
      (_$qtdValidaComputed ??= Computed<bool>(() => super.qtdValida,
              name: '_ItemModelBase.qtdValida'))
          .value;

  final _$codigoBarraAtom = Atom(name: '_ItemModelBase.codigoBarra');

  @override
  String get codigoBarra {
    _$codigoBarraAtom.reportRead();
    return super.codigoBarra;
  }

  @override
  set codigoBarra(String value) {
    _$codigoBarraAtom.reportWrite(value, super.codigoBarra, () {
      super.codigoBarra = value;
    });
  }

  final _$qtdAtom = Atom(name: '_ItemModelBase.qtd');

  @override
  double get qtd {
    _$qtdAtom.reportRead();
    return super.qtd;
  }

  @override
  set qtd(double value) {
    _$qtdAtom.reportWrite(value, super.qtd, () {
      super.qtd = value;
    });
  }

  final _$dataHoraLeituraAtom = Atom(name: '_ItemModelBase.dataHoraLeitura');

  @override
  DateTime get dataHoraLeitura {
    _$dataHoraLeituraAtom.reportRead();
    return super.dataHoraLeitura;
  }

  @override
  set dataHoraLeitura(DateTime value) {
    _$dataHoraLeituraAtom.reportWrite(value, super.dataHoraLeitura, () {
      super.dataHoraLeitura = value;
    });
  }

  final _$descricaoAtom = Atom(name: '_ItemModelBase.descricao');

  @override
  String get descricao {
    _$descricaoAtom.reportRead();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.reportWrite(value, super.descricao, () {
      super.descricao = value;
    });
  }

  final _$_ItemModelBaseActionController =
      ActionController(name: '_ItemModelBase');

  @override
  dynamic setcodigoBarra(String pCodigoBarra) {
    final _$actionInfo = _$_ItemModelBaseActionController.startAction(
        name: '_ItemModelBase.setcodigoBarra');
    try {
      return super.setcodigoBarra(pCodigoBarra);
    } finally {
      _$_ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setqtd(double pQtd) {
    final _$actionInfo = _$_ItemModelBaseActionController.startAction(
        name: '_ItemModelBase.setqtd');
    try {
      return super.setqtd(pQtd);
    } finally {
      _$_ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDataHoraLeitura(DateTime pDataHoraLeitura) {
    final _$actionInfo = _$_ItemModelBaseActionController.startAction(
        name: '_ItemModelBase.setDataHoraLeitura');
    try {
      return super.setDataHoraLeitura(pDataHoraLeitura);
    } finally {
      _$_ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescricao(String pDescricao) {
    final _$actionInfo = _$_ItemModelBaseActionController.startAction(
        name: '_ItemModelBase.setDescricao');
    try {
      return super.setDescricao(pDescricao);
    } finally {
      _$_ItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
codigoBarra: ${codigoBarra},
qtd: ${qtd},
dataHoraLeitura: ${dataHoraLeitura},
descricao: ${descricao},
dataHoraLeituraDisplay: ${dataHoraLeituraDisplay},
codigoBarraValido: ${codigoBarraValido},
qtdValida: ${qtdValida}
    ''';
  }
}
