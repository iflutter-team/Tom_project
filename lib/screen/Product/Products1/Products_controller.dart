import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Addproduct/Addproduct_screen.dart';

class Productscontroller extends GetxController {
  DatabaseReference database = FirebaseDatabase.instance.ref("productdata");
 // List product = [];

  void navigetToAddproduct() {
    Get.to(
      () => Addproduct(),
    );
  }

  void navigetToback() {
    Get.back();
    update(['back']);
  }
  //
  // @override
  // void onInit() {
  //   dataShow();
  //   update(['back']);
  //   super.onInit();
  // }
  //
  // Future<void> dataShow() async {
  //  await database.once().then(
  //     (value) {
  //       List show = value.snapshot.value as List;
  //       product=show;
  //       update(['back']);
  //     },
  //   );
  // }
}
