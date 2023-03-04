import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int _counterA = 0;
  int _counterB = 0;

  int get countA => _counterA;
  int get countB => _counterB;

  increamentA(){
    _counterA++;
    notifyListeners();
  }

  increamentB(){
    _counterB++;
    notifyListeners();
  }

  decreamentA(){
    _counterA--;
    notifyListeners();
  }

  decreamentB(){
    _counterB--;
    notifyListeners();
  }

  reset(){
    _counterA = 0;
    _counterB = 0;
    notifyListeners();
  }

}