// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_bot_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatBotController on _ChatSemBotControllerBase, Store {
  Computed<List<Resposta>> _$respostasComputed;

  @override
  List<Resposta> get respostas =>
      (_$respostasComputed ??= Computed<List<Resposta>>(() => super.respostas))
          .value;
  Computed<List<Message>> _$messagesComputed;

  @override
  List<Message> get messages =>
      (_$messagesComputed ??= Computed<List<Message>>(() => super.messages))
          .value;
  Computed<int> _$qtdMessagesComputed;

  @override
  int get qtdMessages =>
      (_$qtdMessagesComputed ??= Computed<int>(() => super.qtdMessages)).value;

  final _$_respostasAtom = Atom(name: '_ChatSemBotControllerBase._respostas');

  @override
  ObservableList<Resposta> get _respostas {
    _$_respostasAtom.context.enforceReadPolicy(_$_respostasAtom);
    _$_respostasAtom.reportObserved();
    return super._respostas;
  }

  @override
  set _respostas(ObservableList<Resposta> value) {
    _$_respostasAtom.context.conditionallyRunInAction(() {
      super._respostas = value;
      _$_respostasAtom.reportChanged();
    }, _$_respostasAtom, name: '${_$_respostasAtom.name}_set');
  }

  final _$_ChatSemBotControllerBaseActionController =
      ActionController(name: '_ChatSemBotControllerBase');

  @override
  void _addMessage(BackEndData data) {
    final _$actionInfo =
        _$_ChatSemBotControllerBaseActionController.startAction();
    try {
      return super._addMessage(data);
    } finally {
      _$_ChatSemBotControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sendMessage(Resposta resposta) {
    final _$actionInfo =
        _$_ChatSemBotControllerBaseActionController.startAction();
    try {
      return super.sendMessage(resposta);
    } finally {
      _$_ChatSemBotControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'respostas: ${respostas.toString()},messages: ${messages.toString()},qtdMessages: ${qtdMessages.toString()}';
    return '{$string}';
  }
}
