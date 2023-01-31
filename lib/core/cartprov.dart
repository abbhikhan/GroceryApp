import 'package:flutter/cupertino.dart';

class CardProv extends ChangeNotifier {
  // int x = 1;
  // void increment() {
  //   x++;
  //   notifyListeners();
  // }

  // void decrement() {
  //   x--;
  //   notifyListeners();

  // }
  List<Item> _items = [];
  // UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  get size => _items.length;

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void toggleItem(Item item) {
    item.toggle();
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }
}

class Item {
  String item;
  bool completed;
  Item({required this.item, this.completed = false});
  void toggle() {
    completed = !completed;
  }
}
