import 'dart:convert' as Converter;

class BackEndData {
  String _perguntas;
  List<String> _resposta;

  BackEndData({String perguntas, List<String> resposta}) {
    this._perguntas = perguntas;
    this._resposta = resposta;
  }

  String get perguntas => _perguntas;
  set perguntas(String perguntas) => _perguntas = perguntas;
  List<String> get resposta => _resposta;
  set resposta(List<String> resposta) => _resposta = resposta;

  BackEndData.fromStringJson(String stringJson) {
    print('j1');
    var filhoJ = Converter.json.decode(stringJson);
    print('j2');
    BackEndData.fromJson(filhoJ);
  }

  BackEndData.fromJson(Map<String, dynamic> json) {
    _perguntas = json['perguntas'];
    _resposta = json['resposta'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['perguntas'] = this._perguntas;
    data['resposta'] = this._resposta;
    return data;
  }
}