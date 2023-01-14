import 'package:flutter/material.dart';

class TabAmountController extends ChangeNotifier {
  int globalTabAmount = 0;
  void setTabAmount(int value) {
    globalTabAmount = value;
    notifyListeners();
  }
}
