import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Forgot%20pass%202/Forgot_pass2_controller.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

Widget ImageForgetpass2() {
  return const Image(
    image: AssetImage("assets/images/Forgot pass2.png"),
  );
}

Widget Forgotpass2Texttitle() {
  return Text(
    StringRes.Forgottitle2,
    style: const TextStyle(
      color: ColorsRes.green1color,
      fontSize: 20,
    ),
  );
}

Widget ForgotTextfiled() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(15),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            prefixIcon: const Icon(Icons.lock),
            labelText: StringRes.labelText15title,
            hintText: StringRes.hintText15title,
          ),
          keyboardType: TextInputType.number,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            prefixIcon: const Icon(Icons.lock),
            labelText: StringRes.labelText16title,
            hintText: StringRes.hintText16title,
          ),
          keyboardType: TextInputType.number,
        ),
      ),
    ],
  );
}

Widget Forgotpass2button() {
  return GetBuilder<Forgotpass2controller>(
    builder: (controller) => MaterialButton(
      minWidth: 300,
      color: ColorsRes.green2color,
      onPressed: controller.navigetToForgotLogin,
      child: Text(
        StringRes.texttitle2,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget Forgot2text() {
  return Text(
    StringRes.Forgotaccount2,
    style: const TextStyle(
      fontSize: 15,
      color: ColorsRes.blackcolor,
    ),
  );
}

Widget Forgot2Login() {
  return GetBuilder<Forgotpass2controller>(
    builder: (controller) => TextButton(
      onPressed: controller.navigetToForgotLogin,
      child: Text(StringRes.ForgotLogin2),
    ),
  );
}
