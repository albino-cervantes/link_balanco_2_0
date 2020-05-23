import 'package:linkbalanco2/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:linkbalanco2/app/app_widget.dart';
import 'package:linkbalanco2/app/constantes/nome_tabelas.dart';
import 'package:linkbalanco2/app/modules/configuracoes/config_module.dart';
import 'package:linkbalanco2/app/modules/configuracoes/model/config_model.dart';
import 'package:linkbalanco2/app/modules/home/home_module.dart';
import 'package:linkbalanco2/app/modules/leitura_camera/leitura_camera_module.dart';
import 'package:linkbalanco2/app/modules/leitura_camera/leitura_camera_widget.dart';
import 'package:linkbalanco2/app/repository/repositoryBase.dart';
import 'package:linkbalanco2/app/splash/splash_page/splash_screen_module.dart';

import 'constantes/routes.dart';
import 'modules/configuracoes/config_controller.dart';
import 'splash/splash_page/splash_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds =>
      [
        Bind((i) => AppController(), lazy: false),
      ];

  @override
  List<Router> get routers =>
      [
        //Router('/', module: SplashScreenModule()),
        //Router('${Routes.HOME_ROUTE}', module: HomeModule()),
        Router('/', module: HomeModule()),
        Router('${Routes.CONFIG_ROUTE}', module: ConfigModule()),
        Router('${Routes.LEITURA_CAMERA_ROUTE}', module: LeituraCameraModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
