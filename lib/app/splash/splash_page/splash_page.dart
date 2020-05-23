import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/constantes/routes.dart';
import 'package:linkbalanco2/app/modules/configuracoes/model/config_model.dart';
import 'package:linkbalanco2/app/repository/repositoryBase.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "SplashPage"}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Modular.get<RepositoryBase<ConfigModel>>().getAsync().then((_){
      Modular.to.pushReplacementNamed('${Routes.HOME_ROUTE}');
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
