
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/constantes/nome_tabelas.dart';
import 'package:linkbalanco2/app/modules/configuracoes/config_controller.dart';
import 'package:linkbalanco2/app/modules/configuracoes/config_page.dart';
import 'package:linkbalanco2/app/repository/repositoryBase.dart';

import 'model/config_model.dart';


class ConfigModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ConfigController()),
    Bind((i) =>RepositoryBase<ConfigModel>(NomeTabelasBancoDados.TABELA_CONFIGURACOES),lazy: false),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => ConfigPage()),
      ];

  static Inject get to => Inject<ConfigModule>.of();
}
