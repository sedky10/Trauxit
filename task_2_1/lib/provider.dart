import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int number =0;

  increment() {
    number++;
    notifyListeners();
  }
  decrement() {
    number--;
    notifyListeners();
  }
}
