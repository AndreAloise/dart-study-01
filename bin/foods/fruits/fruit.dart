import 'dart:math';

import '../food.dart';

class Fruit extends Food{
  late int harvestDays;
  late final int daysToBeRiped;
  static const double _priceConversion = 1.75;
  static const int _priceDecimal = 2;

  Fruit(double currentPrice){
    price = currentPrice;
  }

  bool isRippedToConsumption(){
    return ((daysToBeRiped <= harvestDays) && (harvestDays < daysToBeRotten));
  }

  double fruitCost(){

    return price * _priceConversion;
  }

  double roundOffToXDecimal(double number) {
    // To prevent number that ends with 5 not round up correctly in Dart (eg: 2.275 round off to 2.27 instead of 2.28)
    String numbersAfterDecimal = number.toString().split('.')[1];
    if (numbersAfterDecimal != '0') {
      int existingNumberOfDecimal = numbersAfterDecimal.length;
      double incrementValue = 1 / (10 * pow(10, existingNumberOfDecimal));
      if (number < 0) {
        number -= incrementValue;
      } else {
        number += incrementValue;
      }
    }

    return double.parse(number.toStringAsFixed(_priceDecimal));
  }

  @override
  String toString(){
    bool isGoodToConsume = isRippedToConsumption();

    double cost = roundOffToXDecimal(fruitCost());

    String textWithMultipleColors = '\nThe fruit $name has $weight kg and was harvested $harvestDays day(s) ago.\n'
        'It cost $cost. dollars.\n'
        'As we can see, originally it has a predominant shade of $firstColor,'
        'with some patches of $secondColor.\n';

    String textWithOneColor = '\nThe fruit $name has $weight kg and was harvested $harvestDays day(s) ago.\n'
        'It cost $cost dollars.\n'
        'As we can see, originally it has the color $firstColor.\n';

    String flavorText = 'When you taste it, it has a $flavor flavor.';
    String rottenText = 'You should not taste it because it is Rotten.';

    String lastPhrase = isGoodToConsume ? flavorText : rottenText;
    String phraseWithMultipleColors = textWithMultipleColors + lastPhrase;
    String phraseWithOneColor = textWithOneColor + lastPhrase;

    return secondColor.isNotEmpty ? phraseWithMultipleColors : phraseWithOneColor;
  }
}