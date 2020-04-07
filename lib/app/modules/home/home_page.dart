import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: <Widget>[
            textoCabecalho,
            botao,
          ]),
        ),
      ),
    );
  }

  Widget get textoCabecalho {
    var txt ='Olá vamos começar um atendimento gratuito com a lara?'; 
    return Semantics(
      label: txt,
      child: Text(
        txt,
        style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget get botao {
    var txt = 'Clique aqui para começar';
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Semantics(
          label: txt,
          child: RawMaterialButton(
            onPressed: controller.abrirChat,
            child: Center(
              child: Text(
                txt,
                style: Theme.of(context).textTheme.display1,
                textAlign: TextAlign.center,
              ),
            ),
            shape: new CircleBorder(),
            fillColor: Colors.white,
            padding: const EdgeInsets.all(15.0),
            elevation: 0,
          ),
        ),
      ),
    );
  }

}
