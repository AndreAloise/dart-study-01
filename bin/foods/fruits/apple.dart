import 'fruit.dart';

class Apple extends Fruit{

  Apple(int daysTbRipped, int daysTbRotten, double price) : super(price){
    daysToBeRiped = daysTbRipped;
    daysToBeRotten = daysTbRotten;
  }
}
