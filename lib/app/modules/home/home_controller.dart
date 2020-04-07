import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeController{
	void abrirChat() {
		Modular.to.pushNamed('/chat');
  }
  
	void abrirMapa() {
		Modular.to.pushNamed("/mapas");
	}
}
