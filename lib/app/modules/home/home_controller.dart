import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/modules/home/model/item_model.dart';
import 'package:mobx/mobx.dart';

import 'widgets/novo_altera_item/novo_ou_altera_item_controller.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  ObservableList<ItemModel> listaDeItens;

  @observable
  int indexItemSelecionado;

  @action
  setIndexItemSelecionado(int pIndex) => indexItemSelecionado = pIndex;

  @action
  adicionarItem(ItemModel pItem) {
    listaDeItens.insert(0, pItem);
    Modular.get<NovoOuAlteraItemController>().setItemModel(pItem);
    indexItemSelecionado = 0;
  }

  removerItem(ItemModel pItem) {
    listaDeItens.remove(pItem);
  }

  _HomeControllerBase() {
    listaDeItens = ObservableList<ItemModel>();
  }
}
