import 'package:get/get.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar.dart';
import 'package:tom_project/screen/Product/Delete/Delete_screen.dart';

class deleteController extends GetxController {
  void addproduct() {
    Get.to(
      () => Bottomhello(),
    );
  }

  void cancelproduct() {
    Get.to(
      () => delete(),
    );
  }
}
