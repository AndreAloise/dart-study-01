class MyException implements Exception{
  final String message;

  const MyException([this.message = ""]);

  @override
  String toString() => "MyException: $message";
}