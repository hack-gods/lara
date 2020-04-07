import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import '../models/message.dart';

class MessageWidget extends StatelessWidget {
  Message message;
  double pixelRatio;
  double px;

  MessageWidget(this.message);

  @override
  Widget build(BuildContext context) {
    calculatePixelsSize(context);
    return Bubble(
      style: _bubbleStyle(message.type),
      child: Semantics(
        label: message.text,
        child: Text(message.text),
      ),
    );
  }

  BubbleStyle _bubbleStyle(Type type) {
    switch (type) {
      case Type.received:
        return _styleReceived;
      case Type.sended:
        return _styleSended;
      case Type.time:
        return _styleTime;
    }
  }

  BubbleStyle get _styleTime => BubbleStyle(
        alignment: Alignment.center,
        color: Color.fromARGB(255, 212, 234, 244),
        elevation: 5 * px,
        margin: BubbleEdges.only(top: 8.0),
      );

  BubbleStyle get _styleReceived => BubbleStyle(
        nip: BubbleNip.leftTop,
        color: Colors.white,
        elevation: 4 * px,
        margin: BubbleEdges.only(top: 8.0, right: 50.0),
        alignment: Alignment.topLeft,
      );

  BubbleStyle get _styleSended => BubbleStyle(
        nip: BubbleNip.rightTop,
        color: Color.fromARGB(255, 225, 255, 199),
        elevation: 4 * px,
        margin: BubbleEdges.only(top: 8.0, left: 50.0),
        alignment: Alignment.topRight,
      );

  void calculatePixelsSize(BuildContext context) {
    pixelRatio = MediaQuery.of(context).devicePixelRatio;
    px = 1 / pixelRatio;
  }
}
