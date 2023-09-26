class Orange {
  String name = '';
  double weight = 0.0;
  String firstColor = '';
  String secondColor = '';
  String flavor = '';
  int harvestDays = 0;
  late final int daysToBeRiped;
  late final int daysToBeRotten;

  Orange(int daysTbRipped, int daysTbRotten){
    daysToBeRiped = daysTbRipped;
    daysToBeRotten = daysTbRotten;
  }

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
