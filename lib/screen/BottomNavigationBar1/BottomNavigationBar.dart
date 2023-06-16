import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Orders/Orders_screen.dart';
import 'package:tom_project/screen/Product/product/Product_screen.dart';
import 'package:tom_project/screen/Profile/Profile_screen.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar_widget.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigation_controller.dart';
import 'package:tom_project/screen/home/Home_screen.dart';
import 'package:tom_project/utils/color_res.dart';

// ignore: must_be_immutable
class Bottomhello extends StatelessWidget {
  Bottomhello({super.key});
  NavigationBarController navigationBarController =
      Get.put(NavigationBarController());

  final screen = [
    const Homescreen(),
    productscreen(),
    const Orderscreen(),
    const Profiles(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: navigationBarController.tabIndex.value,
          children: screen,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar1(),
    );
  }
}
