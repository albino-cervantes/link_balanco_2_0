import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:linkbalanco2/app/constantes/id_tabela_hive.dart';
import 'package:mobx/mobx.dart';

part 'item_model.g.dart';

@HiveType(typeId: IdTabelaHive.ID_TABELA_ITEMCONTAGEM)
class ItemModel = _ItemModelBase with _$ItemModel;

abstract class _ItemModelBase extends HiveObject with Store {
  @HiveField(0)
  @observable
  String codigoBarra;

  @HiveField(1)
  @observable
  double qtd;

  @HiveField(2)
  @observable
  DateTime dataHoraLeitura = DateTime.now();

  @HiveField(3)
  @observable
  String descricao;

  _ItemModelBase(
      {this.codigoBarra, this.qtd, this.descricao});

  @computed
  String get dataHoraLeituraDisplay => DateFormat('dd/MM/yyyy kk:mm').format(dataHoraLeitura);

  @computed
  bool get codigoBarraValido => codigoBarra != null && codigoBarra.isNotEmpty;

  @computed
  bool get qtdValida => qtd != null && qtd >= 0;

  @action
  setcodigoBarra(String pCodigoBarra) => codigoBarra = pCodigoBarra;

  @action
  setqtd(double pQtd) => qtd = pQtd;

  @action
  setDataHoraLeitura(DateTime pDataHoraLeitura) =>
      dataHoraLeitura = pDataHoraLeitura;

  @action
  setDescricao(String pDescricao) => descricao = pDescricao;
}
