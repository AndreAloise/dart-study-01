import 'fruit.dart';

class Orange extends Fruit{

  Orange(int daysTbRipped, int daysTbRotten, double price) : super(price){
    daysToBeRiped = daysTbRipped;
    daysToBeRotten = daysTbRotten;
  }
}
