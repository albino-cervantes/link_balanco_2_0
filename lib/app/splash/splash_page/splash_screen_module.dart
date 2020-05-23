import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/constantes/nome_tabelas.dart';
import 'package:linkbalanco2/app/modules/configuracoes/model/config_model.dart';
import 'package:linkbalanco2/app/repository/repositoryBase.dart';
import 'package:linkbalanco2/app/splash/splash_page/splash_page.dart';

class SplashScreenModule extends ChildModule {
  @override
  List<Bind> get binds =>
      [
        Bind((i) =>RepositoryBase<ConfigModel>(NomeTabelasBancoDados.TABELA_CONFIGURACOES),lazy: false),
      ];

  @override
  List<Router> get routers =>
      [
        Router('/', child: (_, args) => SplashPage()),
      ];

  static Inject get to => Inject<SplashScreenModule>.of();
}
