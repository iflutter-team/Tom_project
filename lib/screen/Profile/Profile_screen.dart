import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Profile/Profile_controller.dart';
import 'package:tom_project/utils/string_res.dart';
import '../home/Home_screen_widget.dart';
import 'Profile_screen_widget.dart';

class Profiles extends StatelessWidget {
  const Profiles({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(profilecontroller());
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
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              profiletitle1(),
            ],
          ),
          update(),
        ],
      ),drawer: drawer(),
      bottomNavigationBar: editprofile(),
    );
  }
}

