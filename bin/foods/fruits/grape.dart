import 'fruit.dart';

class Grape extends Fruit {

  Grape(int daysTbRipped, int daysTbRotten, double price) : super(price){
    daysToBeRiped = daysTbRipped;
    daysToBeRotten = daysTbRotten;
  }
}
