import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/constantes/routes.dart';

enum MenuAppBarOpcoes {
  transmitir,
  selecionaritens,
  limparcontagem,
  configuracoes
}

class AppBarWidget extends StatefulWidget {
  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Link Balanço"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.network_wifi),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.photo_camera),
          onPressed: () {
            Modular.to.pushNamed('${Routes.LEITURA_CAMERA_ROUTE}');
          },
        ),
        PopupMenuButton<MenuAppBarOpcoes>(
          itemBuilder: (context) => <PopupMenuEntry<MenuAppBarOpcoes>>[
            const PopupMenuItem<MenuAppBarOpcoes>(
              child: Text("Transmitir"),
              value: MenuAppBarOpcoes.transmitir,
            ),
            const PopupMenuItem<MenuAppBarOpcoes>(
              child: Text("Selecionar Itens"),
              value: MenuAppBarOpcoes.selecionaritens,
            ),
            const PopupMenuItem<MenuAppBarOpcoes>(
              child: Text("Limpar Contagem"),
              value: MenuAppBarOpcoes.limparcontagem,
            ),
            const PopupMenuItem<MenuAppBarOpcoes>(
              child: Text("Configurações"),
              value: MenuAppBarOpcoes.configuracoes,
            ),
          ],
          onSelected: _result,
        ),
      ],
    );
  }

  void _result(MenuAppBarOpcoes value) {
    switch(value){
      case MenuAppBarOpcoes.configuracoes:
        Modular.to.pushNamed('${Routes.CONFIG_ROUTE}');
        break;
      case MenuAppBarOpcoes.transmitir:
      // TODO: Handle this case.
        break;
      case MenuAppBarOpcoes.selecionaritens:
      // TODO: Handle this case.
        break;
      case MenuAppBarOpcoes.limparcontagem:
      // TODO: Handle this case.
        break;
    }
  }
}
