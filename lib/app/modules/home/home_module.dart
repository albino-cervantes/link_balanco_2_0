import 'package:linkbalanco2/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/modules/home/home_page.dart';
import 'package:linkbalanco2/app/modules/home/widgets/novo_altera_item/novo_ou_altera_item_controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => NovoOuAlteraItemController())
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
