import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/BottomNavigationBar1/Data_controller.dart';
import 'package:tom_project/screen/Profile/Profile_screen_widget.dart';
import 'package:tom_project/utils/string_res.dart';

import '../BottomNavigationBar1/BottomNavigation_controller.dart';

class Profiles extends StatelessWidget {
  Profiles({super.key});
  final NavigationBarController navigationBarController =
      Get.put(NavigationBarController());
  final Datacontroller datacontroller = Get.put(Datacontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
        ),
        centerTitle: true,
        title: Text(
          StringRes.profilestitle1,
          style: const TextStyle(fontSize: 20, color: Colors.green),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.green,
            ),
          )
        ],
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 10),
          child: Column(
            children: [
              Divider(
                color: Colors.green,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    profiletitle3(),
                  ],
                ),
                const Spacer(),
                profiletitle4(),
              ],
            ),
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
            const SizedBox(
              height: 20,
            ),
            profiletitle9(),
            const SizedBox(
              height: 20,
            ),
            profiletitle10(),
            const SizedBox(
              height: 20,
            ),
            profiletitle11(),
            const SizedBox(
              height: 20,
            ),
            profiletitle12(),
            const SizedBox(
              height: 20,
            ),
            profiletitle13(),
            const SizedBox(
              height: 20,
            ),
            profiletitle14(),
            const SizedBox(
              height: 20,
            ),
            profiletitle15(),
            const SizedBox(
              height: 20,
            ),
            bankdetails(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
