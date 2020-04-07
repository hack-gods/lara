import 'package:flutter_modular/flutter_modular.dart';
import 'package:lara/app/modules/mapa/MapsAPI.dart';
import 'chat_bot_page.dart';
import 'chat_bot_controller.dart';
import 'comunication/bot.dart';

class ChatSemBotModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MapsAPI()),
        Bind((i) => LaraBot()),
        Bind((i) => ChatBotController(i.get<LaraBot>(), i.get<MapsAPI>())),
      ];

  @override
  List<Router> get routers => [
        Router('/chat', child: (_, args) => ChatBotPage()),
      ];

  static Inject get to => Inject<ChatSemBotModule>.of();
}
