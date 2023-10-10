import '../foods/food.dart';

class Basket {
  late Map<String, List<Food>> _items;

  Map<String, List<Food>> get getBasket {
    return _items;
  }

  void addItemToBasket(List<Food> list) {
    String foodName = list[0].name;
    _items.addAll({foodName: list});
  }

  void _updateItemList(List<Food> updatedList) {
    String foodName = updatedList[0].name;
    _items.update(foodName, (value) => updatedList);
  }

  void tryUpdateItemList(List<Food> list) {
    try {
      _updateItemList(list);
    } catch (e, stack) {
      print("Error: $e\nStackTrace: $stack");
    }
  }

  void safeUpdateList(List<Food> list) {
    bool isListEmpty = list.isEmpty;
    if (isListEmpty) {
      print("The food list is empty and can't be updated.");
    } else {
      String foodName = list[0].name;
      bool isOnList = _items.containsKey(foodName);
      if (isOnList) {
        _updateItemList(list);
      } else {
        print(
            "The item '$foodName' does not exists on the basket to be updated.");
      }
    }
  }

  void tryRemoveLastItemFromList(Food food){
    try{
      _removeAnItemFromList(food);
    } catch(e, stack){
      print("Error: $e\nStackTrace: $stack");
    }
  }

  void _removeAnItemFromList(Food food){
    String foodName = food.name;
    List<Food> list = _items.values.firstWhere((element) => _checkIfNotEmpty(element, foodName));
    list.removeLast();
  }

  bool _checkIfNotEmpty(List<Food> list, String name){
    Food food = list.firstWhere((element) => element.name == name);
    return food.name.isNotEmpty;
  }

  void tryRemoveItemListFromBasket(String foodName){
    try{
      _removeItemListFromBasket(foodName);
    }catch(e, stack){
      print("Error: $e\nStackTrace: $stack");
    }
  }

  void safeRemoveItemListFromBasket(String foodName){
    bool isListEmpty = _items.isEmpty;
    if (isListEmpty) {
      print("The basket is empty and do not have items to be removed.");
    } else {
      bool isOnList = _items.containsKey(foodName);
      if (isOnList) {
        _items.remove(foodName);
      } else {
        print(
            "The items '$foodName' do not exists on the basket to be removed.");
      }
    }
  }

  void _removeItemListFromBasket(String foodName){
    _items.remove(foodName);
  }
}
