import 'package:flutter_modular/flutter_modular.dart';

import 'mapa_controller.dart';
import 'mapa_page.dart';
import 'MapsAPI.dart';

class MapaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MapsAPI()),
        Bind((i) => MapaController(i.get<MapsAPI>())),
      ];

  @override
  List<Router> get routers => [
    Router("/mapas", child: (_, args) => MapaPage()),
  ];

  static Inject get to => Inject<MapaModule>.of();
}
