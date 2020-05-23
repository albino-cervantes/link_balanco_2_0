import 'dart:async';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:linkbalanco2/app/constantes/nome_tabelas.dart';
import 'package:linkbalanco2/app/modules/configuracoes/model/config_model.dart';
import 'package:linkbalanco2/app/modules/home/model/item_model.dart';

class HiveHelper {
  final List<Box> boxes = List();
  static Completer<List<Box>> completer = Completer<List<Box>>();

  HiveHelper() {
    _initHive();
  }

  void _initHive() async {
    await Hive.initFlutter();
    print('[HIVE] inicializado');

    _registros();
    await _iniciarBoxes();

    if (!completer.isCompleted) completer.complete(boxes);
  }

  void _registros() {
    _register(ConfigModelAdapter());
    _register(ItemModelAdapter());
  }

  Future _iniciarBoxes() async {
    await _openBox<ConfigModel>(NomeTabelasBancoDados.TABELA_CONFIGURACOES);
  }

  // region Controles internos

  void _register<T>(TypeAdapter<T> adapter) {
    Hive.registerAdapter(adapter);
    print('[HIVE-ADAPTER] "${adapter.toString()}" registrado');
  }

  Future _openBox<T>(String boxName) async {
    boxes.add(await Hive.openBox<T>(boxName));
    print('[HIVE-BOX] "$boxName" aberto');
  }

  static Future<List<Box>> initialized() {
    print('[HIVE - VERIFY IS COMPLETED]');
    return completer.future;
  }

  @override
  void dispose() {
    completer.future.then((boxes) => boxes.forEach((box) => box.close()));
  }

// endregion Controles internos
}
