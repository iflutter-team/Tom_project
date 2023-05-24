import 'package:get/get.dart';

class Homecontroller extends GetxController {
  bool isOn = false;
  //int tabIndex = 0;

  void Update(bool val) {
    isOn = val;
    update(["Update"]);
  }

  // void changeTabIndex(int index) {
  //   tabIndex = index;
  //   update();
  // }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }
}
