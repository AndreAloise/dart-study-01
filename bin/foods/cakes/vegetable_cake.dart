import 'cake.dart';

class VegetableCake<V> implements Cake{
  late String cakeTop;

  VegetableCake(String icing){
    cakeTop = icing;
  }

  @override
  void bake() {
    print('Baking the cake in the oven.');
  }

  @override
  void makeBatter() {
    print('Preparing the $V cake dough.');
  }

  @override
  void makeFilling() {
    print('Filling the cake with $V cream.');
  }

  void addingIcing(){
    print('Covering the cake with $cakeTop icing.');
  }
}