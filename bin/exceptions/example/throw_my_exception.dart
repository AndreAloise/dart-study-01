import '../custom/my_exception.dart';

class ThrowMyException {

  static void throwException(String exceptionMessage) {
    try {
      throw MyException(exceptionMessage);
    } on MyException catch (exc) {
      print('Exception Message is: ${exc.message}');
      print(exc);
      print(exc.toString());
    }
  }

  static void throwExceptionWithInstantiation(String exceptionMessage) {
    try {
      MyException exception = MyException.customMessage(exceptionMessage);
      throw exception;
    } on MyException catch (exc) {
      print('Exception Message is: ${exc.message}');
      print(exc);
      print(exc.toString());
    }
  }

  static void throwExceptionWithLateInitialization(String exceptionMessage) {
    try {
      MyException exception = MyException.customMessage(exceptionMessage);
      throw exception;
    } on MyException catch (exc) {
      try {
        print('Exception Late Message is: ${exc.lateMessage}');
        print(exceptionMessage);
        print(exceptionMessage.toString());
      } catch (error) {
        print('Error is of type: ${error.runtimeType}');
        print('Error message is: $error');
      }
    }
  }
}