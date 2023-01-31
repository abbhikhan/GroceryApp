import 'package:flutter/cupertino.dart';
import 'package:grocery/Model/CartModel';
import 'package:grocery/myCart.dart';

class CartProvider extends ChangeNotifier {
  List<CartModel> dataa = [
    CartModel(
      image: 'assets/images/cApple.png',
      name: 'Apples',
      price: '150Rs',
      weight: '1Kg.Price',
      id: '1',
    ),
    CartModel(
      image: 'assets/images/cTomato.png',
      name: 'Tommatoes',
      price: '100Rs',
      weight: '1Kg.Price',
      id: '2',
    ),
    CartModel(
      image: 'assets/images/cCherry.png',
      name: 'Cherry',
      price: '60 Rs',
      weight: '1Kg.Price',
      id: '3',
    ),
    CartModel(
      image: 'assets/images/strawberries.png',
      name: 'strwaberry',
      price: '180Rs',
      weight: '1Kg.Price',
      id: '4',
    ),
  ];

  void add(CartModel item) {
    item.itemCount = (item.itemCount + 1);
    notifyListeners();
  }

  void subtract(CartModel item) {
    item.itemCount = (item.itemCount - 1);
    notifyListeners();
  }
}
