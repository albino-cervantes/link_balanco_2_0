import 'package:hive/hive.dart';
import 'package:linkbalanco2/app/repository/repositoryBase.dart';
import 'package:path_provider/path_provider.dart';

import 'app/constantes/nome_tabelas.dart';
import 'app/modules/configuracoes/model/config_model.dart';
import 'dart:async';

class Teste{
  String _nomeTabela;

  Teste(this._nomeTabela);

  Future Teste1() async {
    final diretorio = await getApplicationDocumentsDirectory();

    Hive
      ..init(diretorio.path)
      ..registerAdapter(ConfigModelAdapter());

    var box = await Hive.openBox(_nomeTabela);
  //var box = await RepositoryBase<ConfigModel>(NomeTabelasBancoDados.NOME_TABELA_CONFIGURACOES).getAsync();
    print(box?.values.toList().first ?? null);
  }

}