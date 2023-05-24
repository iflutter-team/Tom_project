import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/home/BottomNavigation_controller.dart';
import 'package:tom_project/utils/color_res.dart';

Widget BottomNavigationBar1() {
  return GetBuilder<NavigationBarController>(
    builder: (controller) => Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green.shade300,
        unselectedItemColor: ColorsRes.green3color,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "",
          ),
        ],
        onTap: (val) => controller.changeTabIndex(val),
        selectedItemColor: ColorsRes.green1color,
        currentIndex: controller.tabIndex.value,
      ),
    ),
  );
}
