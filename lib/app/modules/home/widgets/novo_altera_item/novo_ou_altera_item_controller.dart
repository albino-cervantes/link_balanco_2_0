import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/modules/home/home_controller.dart';
import 'package:linkbalanco2/app/modules/home/model/item_model.dart';
import 'package:mobx/mobx.dart';

part 'novo_ou_altera_item_controller.g.dart';

class NovoOuAlteraItemController = _NovoOuAlteraItemControllerBase with _$NovoOuAlteraItemController;

abstract class _NovoOuAlteraItemControllerBase with Store {

  @observable
  ItemModel item;

  @observable
  bool codigoBarrasValido = !Modular.get<HomeController>().listaDeItens.isNotEmpty;

  @observable
  bool statusNovo = Modular.get<HomeController>().listaDeItens.isNotEmpty;

  _NovoOuAlteraItemControllerBase(){
    item = ItemModel();
  }

  @action
  validarCodigoBarrasDigitado(String pCodigoBarra) => codigoBarrasValido = pCodigoBarra.isNotEmpty && pCodigoBarra != null;

  @action
  setItemModel(ItemModel pItem) {
    item = pItem;
    statusNovo = (pItem.key == null && pItem.codigoBarra == null);
    codigoBarrasValido = !statusNovo;
  }

}