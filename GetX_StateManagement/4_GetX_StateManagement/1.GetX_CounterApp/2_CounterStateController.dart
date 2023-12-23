import 'package:get/get.dart';

class CounterStateController extends GetxController{
  RxInt count=0.obs;
  increment(){
    count++;
  }
}
