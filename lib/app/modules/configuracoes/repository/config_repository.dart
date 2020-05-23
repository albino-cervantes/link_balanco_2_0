import 'package:hive/hive.dart';
import 'package:linkbalanco2/app/constantes/nome_tabelas.dart';
import 'package:linkbalanco2/app/modules/configuracoes/model/config_model.dart';
import 'package:linkbalanco2/app/repository/repositoryBase.dart';

class ConfigRepository{

  RepositoryBase<ConfigModel> db;

  ConfigRepository(){
    db = RepositoryBase<ConfigModel>(NomeTabelasBancoDados.TABELA_CONFIGURACOES);
  }

  void save(ConfigModel item){
    db.saveOrUpdateAsync(item);
  }

  Future<ConfigModel> get() async{
     return await db?.getFirst() ?? null;
  }

}