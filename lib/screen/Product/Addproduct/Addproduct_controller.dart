import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/utils/string_res.dart';
import '../../BottomNavigationBar1/BottomNavigationBar.dart';

class addproductcontroller extends GetxController {
  String vandan = "select";
  String kg = "Kg";

  List<DropdownMenuItem<String>> items = const [
    DropdownMenuItem(
      value: 'select',
      child: Text('select'),
    ),
    DropdownMenuItem(
      value: 'mango',
      child: Text('mango'),
    ),
    DropdownMenuItem(
      value: 'apple',
      child: Text('apple'),
    ),
    DropdownMenuItem(
      value: 'watermelon',
      child: Text('watermelon'),
    ),
    DropdownMenuItem(
      value: 'guava',
      child: Text('guava'),
    ),
    DropdownMenuItem(
      value: 'peach',
      child: Text('peach'),
    ),
  ];

  List<DropdownMenuItem<String>> hello = [
    DropdownMenuItem(
      value: 'kg',
      child: Text(StringRes.Textkg),
    ),
    DropdownMenuItem(
      value: 'gm',
      child: Text(StringRes.Textgm),
    ),
  ];

  void navigetToProducts() {
    Get.to(
      () => Bottomhello(),
    );
  }
}
