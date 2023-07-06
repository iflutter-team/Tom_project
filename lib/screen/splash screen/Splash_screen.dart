import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Splash_scrren_controller.dart';


class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

 // final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splash screen.png"),
           const  SizedBox(
              height: 20,
            ),
            const CircularProgressIndicator(),
          ],
        ),
         ),
    );
  }
}


