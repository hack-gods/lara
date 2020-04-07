import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../chat_bot_controller.dart';
import '../models/resposta.dart';

class InputWigdet extends StatefulWidget {
  @override
  _InputWigdetState createState() => _InputWigdetState();

  static double get _requiredHeith => 60.0;
}

class _InputWigdetState extends ModularState<InputWigdet, ChatBotController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: InputWigdet._requiredHeith,
      color: Colors.white.withOpacity(0.3),
      child: Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        child: Observer(
          builder: (_) {
            return ListView.builder(
              itemBuilder: itemBuilder,
              itemCount: controller.respostas.length,
              scrollDirection: Axis.horizontal,
            );
          },
        ),
      ),
    );
  }

  Widget itemBuilder(BuildContext context, int i) {
    return Row(children: <Widget>[
      respostaButtons(controller.respostas[i]),
      SizedBox(width: 10),
    ]);
  }

  respostaButtons(Resposta resposta) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Semantics(
        label: resposta.text,
        child: FlatButton(
          child: Text(resposta.text),
          onPressed: () => controller.sendMessage(resposta),
          color: resposta.color,
          textColor: (resposta.color == Colors.white) ? (null) : (Colors.white),
        ),
      ),
    );
  }
}
