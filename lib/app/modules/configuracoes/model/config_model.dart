import 'package:hive/hive.dart';
import 'package:linkbalanco2/app/constantes/id_tabela_hive.dart';
import 'package:mobx/mobx.dart';

part 'config_model.g.dart';

///usando mobx apenas para deixar o modelo como reativo

@HiveType(typeId: IdTabelaHive.ID_TABELA_CONFIGURACOES)
class ConfigModel = _ConfigModelBase with _$ConfigModel;

abstract class _ConfigModelBase extends HiveObject with Store {
  @HiveField(0)
  @observable
  String servidor;

  @HiveField(1)
  @observable
  int porta;

  @HiveField(2)
  @observable
  String senha;

  @HiveField(3)
  @observable
  bool validarCodigoBarra = false;

  @action
  setServidor(String pServidor) => servidor = pServidor;

  @action
  setPorta(int pPorta) => porta = pPorta;

  @action
  setSenha(String pSenha) => senha = pSenha;

  @action
  setValidarCodigoBarra(bool pValidarCodigoBarra) => validarCodigoBarra = pValidarCodigoBarra;

  @computed
  bool get servidorValido => servidor != null && servidor.isNotEmpty;

  @computed
  bool get portaValida => porta != null && porta > 0;

  @computed
  bool get senhaValida => senha != null && senha.isNotEmpty;
}

