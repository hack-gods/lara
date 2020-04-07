import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'widgets/chat_widget.dart';
import 'widgets/input_widget.dart';
import 'chat_bot_controller.dart';

class ChatBotPage extends StatefulWidget {
  final String title;

  ChatBotPage({Key key, this.title = "Chat Bot"}) : super(key: key);

  @override
  _ChatBotPageState createState() => _ChatBotPageState();
}

class _ChatBotPageState extends ModularState<ChatBotPage, ChatBotController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Semantics(label: 'Chat bot Lara', child: Text(widget.title)),
        actions: <Widget>[
          FlatButton(
            onPressed: controller.searchNearbyHospitals,
            child: Row(children: <Widget>[
              Icon(Icons.search, semanticLabel: 'Procurar hospitais'),
              Center(child: Text('Procurar hospitais')),
            ]),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(10),
        color: Theme.of(context).primaryColor.withOpacity(0.5),
        child: Column(children: widgets),
      ),
    );
  }

  List<Widget> get widgets => [
        Expanded(child: ChatWidget()),
        SizedBox(height: 20),
        Row(children: <Widget>[Expanded(child: InputWigdet())]),
      ];
}
