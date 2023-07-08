import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../BottomNavigationBar1/BottomNavigationBar.dart';

class addproductcontroller extends GetxController {
  TextEditingController discount = TextEditingController();
  TextEditingController Stock = TextEditingController();
  TextEditingController image = TextEditingController();
  TextEditingController Products = TextEditingController();
  TextEditingController review = TextEditingController();

  void navigetToProducts() {
    Get.off(
      () => Bottomhello(),
    );
    update(["add"]);
  }


  Future<void> insertData() async {
    DatabaseReference database = FirebaseDatabase.instance.ref("productdata");
    String? key  = database.push().key;
    await database.child(key!).set({
      "discount": discount.text,
      "Stock": Stock.text,
      "image": image.text,
      "Products": Products.text,
      "pr": review.text,
    }).whenComplete(() {
      Get.back();
      discount.clear();
      Stock.clear();
      image.clear();
      Products.clear();
      review.clear();
     update(["add"]);
    });
  }
}