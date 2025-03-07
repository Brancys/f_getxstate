import 'package:get/get.dart';

class CountController extends GetxController {

  final _value = 0.obs;
  int get value => _value.value;

  void setValue(int val) {
    _value.value = val;
  }

  void increment() {
    setValue(value + 1);
  }

  void decrement() {
    setValue(value - 1);
  }

  void reset() {
    setValue(0);
  }
}