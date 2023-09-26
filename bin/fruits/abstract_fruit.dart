abstract class Fruit{
  late String name;
  late double weight;
  late String firstColor;
  late String secondColor;
  late String flavor;
  late int harvestDays;
  late final int daysToBeRiped;
  late final int daysToBeRotten;

  bool isRippedToConsumption(){
    return ((daysToBeRiped <= harvestDays) && (harvestDays < daysToBeRotten));
  }

  @override
  String toString(){
    bool isGoodToConsume = isRippedToConsumption();

    String textWithMultipleColors = 'The fruit $name has $weight kg and was harvested $harvestDays day(s) ago.\n'
        'As we can see, originally it has a predominant shade of $firstColor,'
        'with some patches of $secondColor.\n';

    String textWithOneColor = 'The fruit $name has $weight kg and was harvested $harvestDays day(s) ago.\n'
        'As we can see, originally it has the color $firstColor.\n'
        'When you taste is, is has a $flavor flavor.';

    String flavorText = 'When you taste is, it has a $flavor flavor.';
    String rottenText = 'You should not taste it because it is Rotten.';

    String lastPhrase = isGoodToConsume ? flavorText : rottenText;
    String phraseWithMultipleColors = textWithMultipleColors + lastPhrase;
    String phraseWithOneColor = textWithOneColor + lastPhrase;

    return secondColor.isNotEmpty ? phraseWithMultipleColors : phraseWithOneColor;
  }
}