import '../food.dart';

class Fruit extends Food{
  late int harvestDays;
  late final int daysToBeRiped;

  bool isRippedToConsumption(){
    return ((daysToBeRiped <= harvestDays) && (harvestDays < daysToBeRotten));
  }

  @override
  String toString(){
    bool isGoodToConsume = isRippedToConsumption();

    String textWithMultipleColors = '\nThe fruit $name has $weight kg and was harvested $harvestDays day(s) ago.\n'
        'As we can see, originally it has a predominant shade of $firstColor,'
        'with some patches of $secondColor.\n';

    String textWithOneColor = '\nThe fruit $name has $weight kg and was harvested $harvestDays day(s) ago.\n'
        'As we can see, originally it has the color $firstColor.\n';

    String flavorText = 'When you taste it, it has a $flavor flavor.';
    String rottenText = 'You should not taste it because it is Rotten.';

    String lastPhrase = isGoodToConsume ? flavorText : rottenText;
    String phraseWithMultipleColors = textWithMultipleColors + lastPhrase;
    String phraseWithOneColor = textWithOneColor + lastPhrase;

    return secondColor.isNotEmpty ? phraseWithMultipleColors : phraseWithOneColor;
  }
}