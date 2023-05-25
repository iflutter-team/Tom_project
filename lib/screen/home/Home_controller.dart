import 'package:get/get.dart';

class Homecontroller extends GetxController {
  bool isOn = false;

  void Update(bool val) {
    isOn = val;
    update(["Update"]);
  }
}
