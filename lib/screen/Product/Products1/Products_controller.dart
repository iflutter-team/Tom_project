import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Addproduct/Addproduct_screen.dart';

import '../../viewproduct/view_product_screen.dart';

class Productscontroller extends GetxController {
  DatabaseReference database = FirebaseDatabase.instance.ref("productdata");

  int counter = 0;

  void add() {
      counter++;
      print(counter);
      update(['add']);
  }

  void hello() {
      if (counter != 1) {
        counter--;
        print(counter);
      }
      update(['add']);
  }

  void navigetToview(int index) {
    Get.to(
          () => View(image: index,),
    );
  }
  // void navigetToview( ) {
  //   Get.to(
  //         () => view(),
  //   );
  // }

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
