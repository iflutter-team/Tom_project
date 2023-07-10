import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/utils/string_res.dart';

import '../BottomNavigationBar1/BottomNavigation_controller.dart';
import '../home/Home_screen_widget.dart';
import 'Profile_screen_widget.dart';

class Profiles extends StatelessWidget {
  Profiles({super.key});
  final NavigationBarController navigationBarController =
      Get.put(NavigationBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
       // backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          StringRes.profilestitle1,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(
                height: 10,
                width: 15,
              ),
              profiletitle1(),
              const SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  profiletitle2(),
                ],
              ),
              const Spacer(),
              profiletitle4(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          profiletitle3(),
          const SizedBox(
            height: 20,
          ),
          profiletitle5(),
          const SizedBox(
            height: 20,
          ),
          profiletitle6(),
          const SizedBox(
            height: 20,
          ),
          profiletitle7(),
          const SizedBox(
            height: 20,
          ),
          profiletitle8(),
        ],
      ),drawer: drawer(),
    );
  }
}
