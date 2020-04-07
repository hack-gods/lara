import 'package:dio/dio.dart';

abstract class Conection {
  void listen(Function(dynamic) data);

  void conect();

  void init();

  void sendData(dynamic data);
}

class LaraConetion extends Conection {
  static final _baseOptions = BaseOptions(
    baseUrl: "http://192.168.0.105:5000",
  );

  final _dio = Dio(_baseOptions);

  Function(dynamic) _onDataReceived;

  Future<void> conect() async { 
    var response = await _dio.get('/');
    if(response.data.toString() == 'conected') return true;
  }

  Future<void> init() async {
    var response = await _dio.get('/bot');
    
    _onDataReceived(response.data);
  }

  @override
  Future<void> sendData(data) async {
    print('enviando:$data');
    var response = await _dio.get('/bot/${data.toString()}');
    await Future.delayed(Duration(milliseconds: 1));
    _onDataReceived(response.data);
  }

  @override
  void listen(Function(dynamic) data) {
    _onDataReceived = data;
  }
}
