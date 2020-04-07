enum Type { received, sended, time }

class Message {
  Type type;
  String text;

  Message(this.text, {this.type = Type.received});
}
