
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewProductcontroller extends GetxController {

  int counter = 0;


  void add() {
    counter++;
    print(counter);
    update(['add']);
  }

  void hello() {
    if (counter != 0) {
      counter--;
      print(counter);
    }
    update(['add']);
  }
}
