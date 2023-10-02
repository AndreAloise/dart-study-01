import '../custom/my_exception.dart';

class ThrowMyException{

  static void throwException(String exceptionMessage){
    try {
      throw MyException(exceptionMessage);
    } on MyException catch (exc){
      print('Exception Message is: ${exc.message}');
      print(exceptionMessage);
    }
  }
}