import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'modules/chat_bot/chat_bot_module.dart';
import 'modules/home/home_module.dart';
import 'modules/mapa/mapa_module.dart';
import 'app_controller.dart';
import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/chat', module: ChatSemBotModule()),
        Router("/mapas", module: MapaModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}