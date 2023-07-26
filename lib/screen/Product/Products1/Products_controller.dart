import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Addproduct/Addproduct_screen.dart';
import '../../viewproduct/view_product_screen.dart';

class Productscontroller extends GetxController {
  DatabaseReference database = FirebaseDatabase.instance.ref("productdata");
  int counter = 0;
  int data = 0;

  void add() {
    counter++;
    update(['add']);
  }

  void remove() {
    if (counter != 0) {
      counter--;
    }
    update(['add']);
  }


  void navigetToview(
      int index, String image, String products, String discount, String stock,
      ) {
   Get.to( View(
     index: index,), arguments: [image, products,discount,stock],
   );
  }


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
