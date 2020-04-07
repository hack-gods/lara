import 'package:flutter/material.dart';

class Resposta {
  String _text;
  String _bruteText;
  Color _color;

  Resposta(String text, [Color color]) {
    if (text == null) throw UnsupportedError('null input');

    _bruteText = text;



    _text = text.replaceAll(RegExp(r'\[(\d+)\]$'), '').toUpperCase();
    
    if(color != null) return;

      color = (_text == 'SIM')
          ? (Colors.green)
          : ((_text == 'NAO')
              ? (Colors.red)
              : ((_text == 'HELP') ? (Colors.deepOrange) : (Colors.white)));
      _color = color;
  }

  String get bruteText => _bruteText;

  Color get color => _color;

  String get text => _text;
}
