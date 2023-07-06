import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Addproduct/Addproduct_screen.dart';

class Productscontroller extends GetxController {
  void navigetToAddproduct() {
    Get.to(
      () => Addproduct(),
    );
  }

  void navigetToback() {
    Get.back();
    update(['back']);
  }
}
