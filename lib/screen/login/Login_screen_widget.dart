import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../common/Textfiled.dart';
import '../../services/pref_service.dart';
import '../../utils/PrefrenceRes.dart';
import '../../utils/asset_res.dart';
import '../../utils/string_res.dart';
import 'login_controller.dart';

Widget loginBody() {
  return GetBuilder<LoginController>(
    builder: (controller) => Form(
      key: controller.formKey,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(ImageRes.login),
              ),
              const SizedBox(height: 20),
              Text(
                StringRes.logintitle,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w500, color: Colors.green),
              ),
              const SizedBox(height: 20),
              GetBuilder<LoginController>(
                builder: (controller) {
                  return textFieldCommon(controller.email, "Enter Email",prefixIcon: const Icon(Icons.email_outlined));
                },
              ),
              const SizedBox(height: 20),
              GetBuilder<LoginController>(
                builder: (controller) {
                  return textFieldCommon(controller.password, "Password",prefixIcon: const Icon(Icons.lock));
                },
              ),
              const SizedBox(height: 20),
              GetBuilder<LoginController>(
                id: "check",
                builder: (controller) {
                  return SizedBox(
                    height: 35,
                    width: 350,
                    child: ElevatedButton(
                        onPressed: () {
                            controller.check();
                           PrefService.setValue(PrefRes.isSignUp, true);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:  const Color(0xFF227c3e),
                        ),
                        child: Text(
                          StringRes.logintitle1,
                          style: const TextStyle(color: Colors.white),
                        )),
                  );
                },
              ),
              const SizedBox(height: 20),
              // GetBuilder<LoginController>(
              //   builder: (controller) {
              //     return TextButton(
              //         onPressed: (){},
              //         child: Text(
              //           StringRes.loginpass,
              //         ));
              //   },
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringRes.loginaccount,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  GetBuilder<LoginController>(
                    builder: (controller) {
                      return TextButton(
                          onPressed: () => controller.goToSignupPage(),
                          child: Text(
                            StringRes.loginRegister,
                          ));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}