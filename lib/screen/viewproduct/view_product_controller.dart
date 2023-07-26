import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/firebase_res.dart';

class ViewProductcontroller extends GetxController {
  int counter = 0;
  int count = 0;
  bool value = false;
  var data = Get.arguments;

  TextEditingController image = TextEditingController();
  TextEditingController discount = TextEditingController();
  TextEditingController stock = TextEditingController();
  TextEditingController productsdata = TextEditingController();


// void favorite(){
  //   value =! value;
  //   update(['like']);
  // }
  //
  // void add() {
  //   counter++;
  //   update(['add']);
  // }
  //
  // void remove() {
  //   counter != 0 ? counter-- : counter;
  //   update(['add']);
  // }
}
