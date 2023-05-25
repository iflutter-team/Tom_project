import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/home/BottomNavigation_controller.dart';
import 'package:tom_project/utils/color_res.dart';

Widget BottomNavigationBar() {
  return GetBuilder<NavigationBarController>(
    builder: (controller) => BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: '',
        ),
      ],
      currentIndex: controller.tabIndex.value,
      selectedItemColor: ColorsRes.whitecolor,
      onTap: (val) => controller.changeTabIndex(val),
    ),
  );
}
