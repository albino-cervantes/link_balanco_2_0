
import 'package:flutter_modular/flutter_modular.dart';
import 'package:linkbalanco2/app/modules/leitura_camera/leitura_camera_widget.dart';



class LeituraCameraModule extends ChildModule {
  @override
  List<Bind> get binds => [
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => LeituraCameraWidget()),
  ];

  static Inject get to => Inject<LeituraCameraModule>.of();
}
