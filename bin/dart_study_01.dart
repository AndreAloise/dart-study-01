void main(List<String> arguments)
{
  int age = 20;
  printAge(age);

  String toHexadecimal = intToHexadecimal(age);
  printText('Now in Hexadecimal: 0x$toHexadecimal');
}

void printText(String text)
{
  print(text);
}

void printAge(int age)
{
  String text = 'My age is: $age years.';
  printText(text);
}

String intToHexadecimal(int value)
{
  String convertedValue = value.toRadixString(16);
  return convertedValue;
}