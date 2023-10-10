import 'exceptions/example/throw_my_exception.dart';
import 'foods/cakes/fruit_cake.dart';
import 'foods/fruits/apple.dart';
import 'foods/fruits/grape.dart';
import 'foods/fruits/orange.dart';
import 'foods/cakes/vegetable_cake.dart';
import 'foods/vegetables/carrot.dart';

void main(List<String> arguments) {
  getOrangeInfo();
  getAppleInfo();
  getGrapeInfo();

  print('');
  createFruitCake<Apple>();

  print('');
  createVegetableCake<Carrot>('chocolate');

  createExceptionExample('exception message 01');
  createExceptionExampleWithInstantiation('exception message 02');
  createExceptionExampleWithLateInitialization('exception message 03');
}

Orange createOrangeFruit() {
  Orange orange = Orange(10, 50, 1.15);
  orange.name = 'Orange';
  orange.harvestDays = 23;
  orange.firstColor = 'Orange';
  orange.secondColor = 'Yellow';
  orange.weight = 0.123;
  orange.flavor = 'Sweet with a slight acidity';
  return orange;
}

Apple createAppleFruit() {
  Apple apple = Apple(8, 43, 1);
  apple.name = 'Apple';
  apple.harvestDays = 68;
  apple.firstColor = 'Red';
  apple.secondColor = '';
  apple.weight = 0.11;
  apple.flavor = 'Sweet';
  return apple;
}

Grape createGrapeFruit() {
  Grape grape = Grape(10, 30, 0.58);
  grape.name = 'Grape';
  grape.harvestDays = 12;
  grape.firstColor = 'Violet';
  grape.secondColor = '';
  grape.weight = 0.07;
  grape.flavor = 'Very sweet';
  return grape;
}

void getAppleInfo() {
  Apple apple = createAppleFruit();
  print(apple);
}

void getOrangeInfo() {
  Orange orange = createOrangeFruit();
  print(orange);
}

void getGrapeInfo() {
  Grape grape = createGrapeFruit();
  print(grape);
}

void createFruitCake<F>() {
  FruitCake<F> fruitCake = FruitCake<F>();
  fruitCake.makeBatter();
  fruitCake.bake();
  fruitCake.makeFilling();
}

void createVegetableCake<V>(String icing) {
  VegetableCake<V> vegetableCake = VegetableCake<V>(icing);
  vegetableCake.makeBatter();
  vegetableCake.bake();
  vegetableCake.makeFilling();
  vegetableCake.addingIcing();
}

void createExceptionExample(String exceptionMessage){
  print('');
  ThrowMyException.throwException(exceptionMessage);
}

void createExceptionExampleWithInstantiation(String exceptionMessage){
  print('');
  ThrowMyException.throwExceptionWithInstantiation(exceptionMessage);
}

void createExceptionExampleWithLateInitialization(String exceptionMessage){
  print('');
  ThrowMyException.throwExceptionWithLateInitialization(exceptionMessage);
}
