import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../chat_bot_controller.dart';
import 'message_widget.dart';

class ChatWidget extends StatefulWidget {
  @override
  _ChatWidgetState createState() => _ChatWidgetState();
}

class _ChatWidgetState extends ModularState<ChatWidget, ChatBotController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Semantics(
          label: 'Chat com ${controller.qtdMessages} mensagens',
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: controller.qtdMessages,
            itemBuilder: itemBuilder,
            scrollDirection: Axis.vertical,
            reverse: true,
          ),
        );
      },
    );
  }

  Widget itemBuilder(BuildContext context, int index) {
    return MessageWidget(controller.messages[index]);
  }
}
