import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt countA = 0.obs;
  RxInt countB = 0.obs;

  increamentA(){
    countA.value++;
  }

  increamentB(){
    countB.value++;
  }

  decreamentA(){
    countA.value--;
  }

  decreamentB(){
    countB.value--;
  }

  reset(){
    countA.value = 0;
    countB.value = 0;
  }

}