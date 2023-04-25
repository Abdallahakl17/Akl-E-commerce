import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/main/Pagemain.dart';

class Cart with ChangeNotifier {
  double price = 0;
  List selectproduct = [];
  add(Item product) {
    selectproduct.add(product);
    price += product.price;

    notifyListeners();
  }

  remove(Item product) {
    selectproduct.remove(product);
        price -= product.price;

    notifyListeners();
  }
}
