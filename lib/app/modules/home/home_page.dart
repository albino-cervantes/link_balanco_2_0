import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/modules/home/model/item_model.dart';
import 'package:linkbalanco2/app/modules/home/widgets/app_bar_widget.dart';
import 'package:linkbalanco2/app/modules/home/widgets/novo_altera_item/novo_ou_altera_item_controller.dart';
import 'package:linkbalanco2/app/modules/home/widgets/novo_altera_item/novo_ou_altera_item_widget.dart';
import 'package:linkbalanco2/app/utils/colors_hexadecimal_converter.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight),
        child: AppBarWidget(),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Observer(
              builder: (_) {
                return ListView.builder(
                    itemCount: controller.listaDeItens.length,
                    itemBuilder: (_, index) {
                      ItemModel item = controller.listaDeItens[index];
                      return _listTilebuilder(item, index);
                    });
              },
            ),
          ),
          NovoOuAlteraItemWidget(
            onInserirPressionado: (item) {
              controller.adicionarItem(item);
            },
          ),
        ],
      ),
    );
  }

  Widget _listTilebuilder(ItemModel item, int pIndex) {
    return Observer(
      builder: (_) {
        return Container(
          color: controller.indexItemSelecionado != null &&
                  controller.indexItemSelecionado == pIndex
              ? ColorsHexadecimalConverter.ColorConverter("#e0e0e0")
              : Colors.white,
          child: ListTile(
            title: Text(
              item.codigoBarra,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.start,
            ),
            subtitle: Text(
              "Descricao do produto",
            ),
            trailing: Container(
              width: 200.0,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          "${item.qtd}",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.end,
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      child: Text(
                        "${item.dataHoraLeituraDisplay}",
                        style: TextStyle(
                            color: Theme.of(context).textTheme.caption.color,
                            fontSize: 12.0),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Modular.get<NovoOuAlteraItemController>().setItemModel(item);
              controller.setIndexItemSelecionado(pIndex);
            },
          ),
        );
      },
    );
  }
}
