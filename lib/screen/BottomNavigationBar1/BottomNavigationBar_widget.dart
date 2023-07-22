import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigation_controller.dart';
import 'package:tom_project/utils/asset_res.dart';
import 'package:tom_project/utils/color_res.dart';

Widget appbarimage() {
  return Image.asset(
    ImageRes.home,
    scale: 2.0,
  );
}

// Widget appbarIcon() {
//   return IconButton(
//     onPressed: () {},
//     icon: const Icon(Icons.menu, color: ColorsRes.green1color),
//   );
// }

Widget appbarIcon2() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.language,
      color: ColorsRes.whitecolor,
    ),
  );
}

Widget appbarIcon3() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.notifications_outlined,
      color: ColorsRes.whitecolor,
    ),
  );
}

Widget appbarIcon4(){
  return IconButton(
      onPressed: (){},
      icon: const Icon(Icons.shopping_cart,color: ColorsRes.whitecolor,),
  );
}

Widget BottomNavigationBar1() {
  return GetBuilder<NavigationBarController>(
    builder: (controller) => BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF67bb6a),
      unselectedItemColor: ColorsRes.whitecolor,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
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
      selectedItemColor: ColorsRes.green2color,
      onTap: (val) => controller.changeTabIndex(val),
    ),
  );
}
