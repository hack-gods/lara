import '../models/back_end_data.dart';
import 'web_socket.dart';

abstract class Bot {
  void conect();

  void init();

  void listenMessages(Function(BackEndData message) onMessageReceived);

  void sendMessage(String message);
}

class LaraBot extends Bot {
  Conection _conection;

  LaraBot([this._conection]) {
    if (_conection == null) _conection = LaraConetion();
  }

  @override
  void conect() => _conection.conect();
  
  @override
  void listenMessages(Function(BackEndData message) onMessageReceived) =>
      _conection.listen(
        (message) {
          var bed = BackEndData.fromJson(message); 
          onMessageReceived(bed);
        },
      );

  @override
  void sendMessage(String message) => _conection.sendData(message);

  @override
  void init() => _conection.init();
}
