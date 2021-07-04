import 'package:get/get.dart';

class MyController extends GetxController {
  var num = 0;

  void increament() {
    num++;
    update();
  }

  void decreament() {
    num--;
    if (num == 0) {
      increament();
    } else {
      print('Error');
    }
    update();
  }
}
