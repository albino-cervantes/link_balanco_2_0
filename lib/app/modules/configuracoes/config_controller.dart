import 'dart:async';
import 'dart:io';

import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/constantes/errors.dart';
import 'package:linkbalanco2/app/modules/configuracoes/model/config_model.dart';
import 'package:linkbalanco2/app/modules/configuracoes/repository/config_repository.dart';
import 'package:linkbalanco2/app/repository/repositoryBase.dart';
import 'package:linkbalanco2/app/utils/alerts/alerts.dart';
import 'package:linkbalanco2/app/utils/alerts/alerts_helper.dart';
import 'package:linkbalanco2/app/utils/alerts/alerts_model.dart';
import 'package:linkbalanco2/app/utils/alerts/flushbar_helper.dart';
import 'package:mobx/mobx.dart';
import 'package:postgres/postgres.dart';

part 'config_controller.g.dart';

class ConfigController = _ConfigControllerBase with _$ConfigController;

abstract class _ConfigControllerBase with Store {
  @observable
  ConfigModel config;

  @observable
  bool conexaoLinkLoding = false;

  @computed
  bool get camposValidos => config.servidorValido && config.portaValida && config.senhaValida;



  Alerts alerts;
  RepositoryBase<ConfigModel> configBD;

  TextEditingController servidorController = TextEditingController();
  TextEditingController portaController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  _ConfigControllerBase() {
    configBD = Modular.get<RepositoryBase<ConfigModel>>();
    alerts = Alerts(AlertsHelper(), FlushbarHelper());
   config = ConfigModel();
  }

  @action
  Future<bool> setConfig() async{
    config = await configBD?.getFirst() ?? config;
    servidorController.text = config.servidor ?? '';
    portaController.text = config.porta.toString() ?? '';
    senhaController.text = config.senha ?? '';

    return Future.value(true);
  }

  @action
  Future<bool> testarConexao(BuildContext context) async {
    conexaoLinkLoding = true;

    try {
      var conexao = PostgreSQLConnection(config.servidor, config.porta, "InkDB",
          username: "postgres", password: config.senha);

      await conexao.open().then((_) {
        conexaoLinkLoding = false;

        alerts.setAlert(context, 'Conexão realizada com sucesso',
            type: AlertsTypeEnum.SUCCESS, popupType: AlertsPopupEnum.WIDGET);
      });

      return Future.value(true);
    } catch (e) {
      conexaoLinkLoding = false;
      alerts.setAlert(context, Errors.ERRO_CONEXAO_BANCO_DADOS,
          stackTrace: StackTrace.fromString(e.toString()));
    }
  }

  void salvarConfiguracoes()async{
    try{
      conexaoLinkLoding = true;
      var a = await configBD.saveOrUpdateAsync(config);
      conexaoLinkLoding = false;
    }catch (e){
      print(e);
    }
  }
}
