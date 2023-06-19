import 'package:flutter/material.dart';
import 'package:tom_project/screen/login/Login_controller.dart';
import 'package:get/get.dart';
import 'package:tom_project/utils/color_res.dart';
import 'Login_screen_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Imagelogin(),
                    const SizedBox(
                      height: 25,
                    ),
                    logintitle(),
                    const SizedBox(
                      height: 20,
                    ),
                    loginTextfiled(),
                    loginTextfiled1(),
                    const SizedBox(
                      width: 100,
                    ),
                    Row(
                      children: [
                        logincheckbox(),
                        logincheck(),
                      ],
                    ),
                    const SizedBox(height: 15),
                    loginbutton(),
                    const SizedBox(
                      height: 20,
                    ),
                    loginpass(),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 100)),
                        loginaccount(),
                        loginRegister(),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
