import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../utils/string_res.dart';
import 'Register_controller.dart';

Widget Signup(){
  return GetBuilder<SignupController>(
      builder: (controller) => Form(
        key: controller.formKey,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                child: Lottie.asset('assets/lottie/animation_lkayltyx.json'),
              ),
              // const Image(
              //   image: AssetImage(ImageRes.register),
              // ),
              Text(
                StringRes.Registertitle,
                style: const TextStyle(fontSize: 20, color: Colors.green),
              ),
              const SizedBox(height: 20),
              textFieldName(),
              const SizedBox(height: 20),
              textFieldUserName(),
              const SizedBox(height: 20),
              textFieldPassword(),
              const SizedBox(height: 20),
              textFieldMobileNo(),
              signUpButton(),
              const SizedBox(height: 20),
              login(),
            ],
          ),
        ),
      ),
  );
}





Widget textFieldName() => GetBuilder<SignupController>(
    builder: (controller) => TextField(
      controller: controller.name,
      decoration: InputDecoration(
        label: const Text("Name"),
        prefixIcon: const Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ));

Widget textFieldUserName() => GetBuilder<SignupController>(
    builder: (controller) => TextField(
      controller: controller.email,
      decoration: InputDecoration(
        label: const Text('Enter Email'),
        prefixIcon: const Icon(Icons.email),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ));

Widget textFieldPassword() => GetBuilder<SignupController>(
    builder: (controller) => TextField(
      controller: controller.password,
      decoration: InputDecoration(
        label: const Text("Password"),
        prefixIcon: const Icon(Icons.lock),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ));

Widget textFieldMobileNo() => GetBuilder<SignupController>(
    builder: (controller) => TextField(
      controller: controller.number,
      maxLength: 10,

      keyboardType: TextInputType.number,
      decoration: InputDecoration(  label: const Text("Number"),
        prefixIcon: const Icon(Icons.phone),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ));

Widget signUpButton() => GetBuilder<SignupController>(
  builder: (controller) => SizedBox(
                height: 35,
                width: 350,
                child: ElevatedButton(
                    onPressed: (){
                      if(
                      controller.name.text.isNotEmpty&&
                          controller.number.text.isNotEmpty&&
                          controller.password.text.isNotEmpty&&
                          controller.email.text.isNotEmpty){
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
                  ),
                ),
              ),
);

Widget login()=> GetBuilder<SignupController>(
  builder: (controller) =>Row(
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
);