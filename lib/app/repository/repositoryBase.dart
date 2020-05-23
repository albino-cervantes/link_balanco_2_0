import 'dart:async';
import 'package:hive/hive.dart';
import 'package:linkbalanco2/app/padroes/hive_helper.dart';

class RepositoryBase<T>{
  String _nomeTabela;

  Box _box() => Hive.box<T>(_nomeTabela);

  ///Classe base para as demais classes do tipo Repository
  ///Informe [_nomeTabela] que será realizado as modificações
  RepositoryBase(this._nomeTabela);

  Future<List<T>> getAsync() async {
    await HiveHelper.initialized();
    return List<T>.from(_box().values);
  }

  Future<T> getFirst() async {
    await HiveHelper.initialized();
    return _box().values.toList().first ?? null;
  }

  Future<int> saveOrUpdateAsync(HiveObject item) async {
    await HiveHelper.initialized();
    if(item.key != null){
      _box().put(item.key, item);
      return item.key;
    }else{
      return _box().add(item);
    }
  }
}
