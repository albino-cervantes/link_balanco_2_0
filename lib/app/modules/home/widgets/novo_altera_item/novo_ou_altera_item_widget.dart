import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/modules/home/home_controller.dart';
import 'package:linkbalanco2/app/modules/home/model/item_model.dart';
import 'package:linkbalanco2/app/modules/home/widgets/novo_altera_item/novo_ou_altera_item_controller.dart';
import 'package:linkbalanco2/app/widgets/adicionar_diminuir/adicionar_diminuir_qtd.dart';

class NovoOuAlteraItemWidget extends StatefulWidget {
  final Function(ItemModel onInserirPressionado) onInserirPressionado;
  final Function(ItemModel onItemModelListTap) onItemModelListTap;

  const NovoOuAlteraItemWidget(
      {@required this.onInserirPressionado, this.onItemModelListTap});

  @override
  _NovoOuAlteraItemWidgetState createState() => _NovoOuAlteraItemWidgetState();
}

class _NovoOuAlteraItemWidgetState
    extends ModularState<NovoOuAlteraItemWidget, NovoOuAlteraItemController> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Form(
        autovalidate: false,
        key: _formKey,
        child: Container(
          color: Colors.white70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AdicionarDiminuirQtd(
                onSaved: (value) {
        controller.item.setqtd(double.parse(value));
      },
      ),
              Expanded(
                child: Observer(
                  builder: (_) {
                    return TextFormField(
                        controller: TextEditingController(
                            text: controller.item.codigoBarra),
                        style: TextStyle(fontSize: 30.0),
                        onChanged: controller.validarCodigoBarrasDigitado,
                        readOnly: controller.statusNovo ? false : true,
                        onSaved: (valor) {
                          controller.item.setcodigoBarra(valor);
                        });
                  },
                ),
              ),
              Observer(
                builder: (_) {
                  return RaisedButton(
                    child:
                        controller.statusNovo ? Text("Inserir") : Text("Novo"),
                    color: Colors.white,
                    onPressed: controller.codigoBarrasValido
                        ? () {
                            if (controller.statusNovo) {
                              _formKey.currentState.save();
                              widget.onInserirPressionado(controller.item);
                            } else {
                              Modular.get<HomeController>()
                                  .indexItemSelecionado = null;
                              controller.setItemModel(ItemModel());
                            }
                          }
                        : null,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
