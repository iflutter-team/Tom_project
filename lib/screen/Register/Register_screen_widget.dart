import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/Textfiled.dart';
import '../../utils/asset_res.dart';
import '../../utils/string_res.dart';
import 'Register_controller.dart';

Widget signupBoyd() {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: GetBuilder<SignupController>(
        builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(ImageRes.register),
              ),
              Text(
                StringRes.Registertitle,
                style: const TextStyle(fontSize: 20, color: Colors.green),
              ),
              const SizedBox(height: 30),
              GetBuilder<SignupController>(
                builder: (controller) {
                  return textFieldCommon(controller.name, "Full Name",prefixIcon: const Icon(Icons.account_circle));
                },
              ),
              const SizedBox(height: 20),
              GetBuilder<SignupController>(
                builder: (controller) {
                  return textFieldCommon(controller.number, "Number",prefixIcon: const Icon(Icons.phone),);
                },
              ),
              const SizedBox(height: 30),
              GetBuilder<SignupController>(
                builder: (controller) {
                  return textFieldCommon(controller.email, "Your Email",prefixIcon: const Icon(Icons.email));
                },
              ),
              const SizedBox(height: 20),
              GetBuilder<SignupController>(
                builder: (controller) {
                  return textFieldCommon(controller.password, "Password",prefixIcon: const Icon(Icons.lock));
                },
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 35,
                width: 350,
                child: ElevatedButton(
                    onPressed: () {
                      if(
                       controller.name.text.isNotEmpty&&
                          controller.number.text.isNotEmpty&&
                          controller.email.text.isNotEmpty&&
                          controller.password.text.isNotEmpty
                      ){
                        controller.addData();
                      }else{
                        Get.snackbar("Data is empty","please fill All data");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color(0xFF227c3e),
                    ),
                  child: Text(
                    StringRes.Registeration1,
                    style: const TextStyle(color: Colors.white),
                  )),
              ),
              const SizedBox(height: 10),
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
                  GetBuilder<SignupController>(
                    builder: (controller) {
                      return TextButton(
                          onPressed: ()=> controller.tologin(),
                          child: Text(
                            StringRes.logintitle1,
                          ));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 115,),
            ],
          );
        },
      ));
}
