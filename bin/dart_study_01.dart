void main(List<String> arguments)
{
  int age = 20;
  printAge(age);

  String toHexadecimal = intToHexadecimal(age);
  printText('Now in Hexadecimal: 0x$toHexadecimal');

  double height = 1.87;
  printHeightInMeters(height);

  double weight = 74.80;
  printWeightInKg(weight);

  printExponential();
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

void printHeightInMeters(double height)
{
  String text = 'My height is: $height meters.';
  printText(text);
}

void printWeightInKg(double weight)
{
  String text = 'My weight is: $weight kg.';
  printText(text);
}

void printExponential()
{
  double value = 21e5;
  String text = 'Exponential is: $value';
  printText(text);
}