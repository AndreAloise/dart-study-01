class MyException implements Exception{
  String? message;
  String? _customMessage;
  late String lateMessage;

  MyException([this.message = ""]);

  MyException.customMessage(String? msg){
    _customMessage = msg;
  }

  MyException.lateMessage([this.lateMessage = ""]);

  @override
  String toString() => "MyException: $_customMessage";
}