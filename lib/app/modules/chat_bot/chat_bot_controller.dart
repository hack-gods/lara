import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lara/app/modules/mapa/results_map/map_search_result.dart';
import 'package:mobx/mobx.dart';
import 'models/back_end_data.dart';

import 'comunication/bot.dart';
import 'models/resposta.dart';
import 'models/message.dart';
import '../mapa/MapsAPI.dart';

part 'chat_bot_controller.g.dart';

class ChatBotController = _ChatSemBotControllerBase with _$ChatBotController;

abstract class _ChatSemBotControllerBase with Store {

  Bot _bot;

  MapsAPI _mapsApi;

  ObservableList<Message> _messages = ObservableList<Message>();

  @observable
  ObservableList<Resposta> _respostas = ObservableList<Resposta>();
  
  _ChatSemBotControllerBase(this._bot, this._mapsApi) {
    print('set listener');
    _bot.listenMessages(_addMessage);
    print('conetc');
    _bot.conect();
    print('initialize');
    _bot.init();
    print('ok');
  }
  
  @computed
  List<Resposta> get respostas => _respostas.toList();

  @computed
  List<Message> get messages => _messages.reversed.toList();

  @computed
  int get qtdMessages => _messages.length;

  @computed
  set messages(List<Message> value) => _messages = value;
  
  @action
  void _addMessage(BackEndData data) {
    print('adiciona m');
    _messages.add(Message(data.perguntas, type: Type.received));
    print('adiciona m:${data.resposta}');
    _respostas = data.resposta.map((r) => Resposta(r)).toList().asObservable();
  }


  @action
  void sendMessage(Resposta resposta) {
    _messages.add(Message(resposta.text, type: Type.sended));
    _bot.sendMessage(resposta.bruteText);
    print('enviado:${resposta.bruteText}');
  }

  void errorMessage() {}

  @action
  Future<void> searchNearbyHospitals() async {
    LatLng latLng = LatLng(-16.7254243, -43.8699252);
    MapSearchResult v = await _mapsApi.search(latLng, 5000, 'hospital', 'health');
  }

}
