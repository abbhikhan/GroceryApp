import 'package:flutter/cupertino.dart';
import 'package:grocery/Model/Features_model.dart';

class HomeProvider {
  List<SearcModel> data = [
    SearcModel(
        image: 'assets/images/appless.png',
        discount: '-16%',
        name: 'Apple',
        price: '180Rs',
        weight: '1Kg',
        asFav: false),
    SearcModel(
        image: 'assets/images/pineapples.png',
        discount: '-20%',
        name: 'pineApples',
        price: '200Rs',
        weight: '1.5Kg',
        asFav: false),
    SearcModel(
        image: 'assets/images/pineapples.png',
        discount: '-20%',
        name: 'pineApples',
        price: '200Rs',
        weight: '1.5Kg',
        asFav: false),
    SearcModel(
        image: 'assets/images/appless.png',
        discount: '-16%',
        name: 'Apple',
        price: '180Rs',
        weight: '1Kg',
        asFav: false),
  ];
}
