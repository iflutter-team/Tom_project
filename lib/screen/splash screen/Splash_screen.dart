import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/login/Login_screen.dart';
import 'package:tom_project/screen/splash%20screen/Splash_screen_widget.dart';
import 'package:tom_project/screen/splash%20screen/Splash_scrren_controller.dart';

class Flash extends StatefulWidget {
  const Flash({Key? key}) : super(key: key);

  @override
  State<Flash> createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  SplashScreenController splashScreenController =
      Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Imagesplash(),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
