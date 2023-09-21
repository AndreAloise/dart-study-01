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

  List<String> list = createNameList();
  print(list);
  printOneElementAtTimeFromList(list);
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

List<String> createNameList()
{
  List<String> names = [];
  names.add('Name1');
  names.add('Name2');
  names.add('Name3');
  names.add('Name4');
  names.add('Name5');
  names.add('Name6');
  return names;
}

void printOneElementAtTimeFromList(List<String> list)
{
  for(int i = 0; i < list.length; i++){
    print(list[i]);
  }
}