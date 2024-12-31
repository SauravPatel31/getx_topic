import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController{
  var _count = 0.obs;

  void increment(){
    _count++;
  }
  getCount()=>_count;
}