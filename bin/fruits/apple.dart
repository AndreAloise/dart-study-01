class Apple {
  String name = '';
  double weight = 0.0;
  String firstColor = '';
  String secondColor = '';
  String flavor = '';
  int harvestDays = 0;
  late final int daysToBeRiped;
  late final int daysToBeRotten;

  Apple(int daysTbRipped, int daysTbRotten){
    daysToBeRiped = daysTbRipped;
    daysToBeRotten = daysTbRotten;
  }

  bool isRippedToConsumption(){
    return ((daysToBeRiped <= harvestDays) && (harvestDays < daysToBeRotten));
  }
}
