import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/constantes/Strings.dart';
import 'package:linkbalanco2/app/modules/configuracoes/config_controller.dart';
import 'widgets/text_form_field_default.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends ModularState<ConfigPage, ConfigController> {
  @override
  initState() {
    teste();
    super.initState();
  }

  teste() async {
    await controller.setConfig();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(),
      body: _Body(),
    );
  }

  Widget _AppBar() {
    return AppBar(
        title: Text(Strings.CONFIG_PAGE_TITULO),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Cancelar",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Modular.to.pop();
            },
          ),
          Observer(
            builder: (_) {
              return FlatButton(
                child: Text(
                  "Salvar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: controller.camposValidos
                    ? salvarConfiguracao
                    : null,
              );
            },
          ),
        ]);
  }

  Widget _Body() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Form(
              child: Column(
                children: <Widget>[
                  Observer(
                    builder: (_) {
                      return TextFormFieldDefault(
                        labeltext: "Servidor",
                        obscuretext: false,
                        textInputtype: TextInputType.number,
                        controller: controller.servidorController,
                        onchange: controller.config.setServidor,
                      );
                    },
                  ),
                  TextFormFieldDefault(
                    labeltext: "Porta",
                    obscuretext: false,
                    textInputtype: TextInputType.number,
                    controller: controller.portaController,
                    onchange: (porta) {
                      controller.config.setPorta(int.parse(porta));
                    },
                  ),
                  Observer(
                    builder: (_) {
                      return TextFormFieldDefault(
                        labeltext: "Senha",
                        obscuretext: true,
                        controller: controller.senhaController,
                        onchange: controller.config.setSenha,
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(top: 10.0),
                      width: 150,
                      child: Observer(
                        builder: (_) {
                          return FlatButton(
                            child: Text(
                              "Testar conexão",
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed:
                                controller.camposValidos ? testarConexao : null,
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Observer(
              builder: (_) {
                return SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: controller.conexaoLinkLoding
                      ? CircularProgressIndicator()
                      : null,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> notify() async {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("Atenção"),
            content: Text("Conteudo"),
            actions: <Widget>[
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Modular.to.pop();
                },
              )
            ],
          );
        });
  }

  void testarConexao() {
    controller.testarConexao(context);
  }

  Future<void> salvarConfiguracao() async {
    await controller.salvarConfiguracoes();
    Modular.to.pop();
  }
}


