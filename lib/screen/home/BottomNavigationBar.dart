import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Orders/Orders_screen.dart';
import 'package:tom_project/screen/Product/Product_screen.dart';
import 'package:tom_project/screen/Profile/Profile_screen.dart';
import 'package:tom_project/screen/home/BottomNavigationBar_widget.dart';
import 'package:tom_project/screen/home/BottomNavigation_controller.dart';
import 'package:tom_project/screen/home/Home_screen.dart';

// ignore: must_be_immutable
class Bottomhello extends StatelessWidget {
  Bottomhello({super.key});
  NavigationBarController navigationBarController =
      Get.put(NavigationBarController());

  final screen = [
    Homescreen(),
    productscreen(),
    Orderscreen(),
    Profiles(),
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
