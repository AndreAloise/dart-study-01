import 'cake.dart';

class FruitCake<F> implements Cake{
  @override
  void bake() {
    print('Baking the cake in the oven.');
  }

  @override
  void makeBatter() {
    print('Preparing the $F cake dough.');
  }

  @override
  void makeFilling() {
    print('Filling the cake with $F cream.');
  }
}