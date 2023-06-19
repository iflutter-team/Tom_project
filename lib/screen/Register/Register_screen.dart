import 'package:flutter/material.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/screen/Register/Register_screen_widget.dart';
import 'package:get/get.dart';

import 'Register_controller.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: -90,
              child: Container(
                height: 240,
                width: 240,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsRes.greenColor,
                  boxShadow: [BoxShadow(blurRadius: 8)],
                ),
              ),
            ),
            Positioned(
              top: Get.height / 2,
              left: -130,
              child: Container(
                height: 160,
                width: 160,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsRes.greenColor,
                  boxShadow: [BoxShadow(blurRadius: 8)],
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              right: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsRes.greenColor,
                  boxShadow: [BoxShadow(blurRadius: 8)],
                ),
              ),
            ),
            Positioned(
              top: Get.height * 0.25,
              right: -140,
              child: Container(
                height: 180,
                width: 180,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsRes.greenColor,
                  boxShadow: [BoxShadow(blurRadius: 8)],
                ),
              ),
            ),
            Positioned(
              top: Get.height * 0.10,
              left: Get.width * 0.70,
              child: Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsRes.greenColor,
                  boxShadow: [BoxShadow(blurRadius: 8)],
                ),
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Imageregister(),
                    Registertitle(),
                    SizedBox(
                      height: 10,
                    ),
                    RegisterTextfiled2(),
                    RegisterTextfiled3(),
                    RegisterTextfiled4(),
                    RegisterTextfiled5(),
                    RegisterTextfiled6(),
                    RegisterTextfiled7(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Registercheckbox(),
                        Registercheck(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Registernext(),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 100)),
                        Registeraccount(),
                        RegisterLogin(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
