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
  }
}
