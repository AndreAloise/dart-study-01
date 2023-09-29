import 'cake.dart';

class FruitCake<M> implements Cake{
  @override
  void bake() {
    print('Baking the cake in the oven.');
  }

  @override
  void makeBatter() {
    print('Preparing the $M cake dough.');
  }

  @override
  void makeFilling() {
    print('Filling the cake with $M cream.');
  }
}