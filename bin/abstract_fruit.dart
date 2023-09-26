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
    return 'The fruit $name has $weight kg and was harvested $harvestDays day ago.\n'
        'As we can see, it has a predominant shade of $firstColor,'
        'with some patches of $secondColor.\n'
        'When you taste is, is has a $flavor flavor.';
  }
}