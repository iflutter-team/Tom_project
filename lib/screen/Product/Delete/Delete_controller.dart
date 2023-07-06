import 'package:get/get.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar.dart';
import 'package:tom_project/screen/Product/Delete/Delete_screen.dart';

class deleteController extends GetxController {
  void addproduct() {
    Get.to(
      () => Bottomhello(),
    );
  }

  void navigetToback() {
    Get.back();
    update(['delete']);
  }

  void cancelproduct() {
    Get.to(
      () => delete(),
    );
  }
}
