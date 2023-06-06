import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Forgot%20pass%201/Forgot_pass1_controller.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

Widget ImagesForgotpass1() {
  return const Image(image: AssetImage("assets/images/Forgot pass1.png"));
}

Widget Forgottitle1() {
  return Text(
    StringRes.Forgottitle1,
    style: const TextStyle(
      color: ColorsRes.green1color,
      fontSize: 20,
    ),
  );
}

Widget ForgotTextfiled() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(Icons.phone_android),
        labelText: StringRes.labelText14title,
        hintText: StringRes.hintText14title,
      ),
      keyboardType: TextInputType.number,
    ),
  );
}

Widget Forgotpass1button() {
  return GetBuilder<Forgotpass1controller>(
    builder: (controller) => MaterialButton(
      minWidth: 300,
      color: const Color(0xFF227c3e),
      onPressed: controller.navigetToForgotpass1,
      child: Text(
        StringRes.texttitle1,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget Forgotpass1Text() {
  return Text(
    StringRes.Forgotaccount1,
    style: const TextStyle(
      fontSize: 15,
      color: Colors.black,
    ),
  );
}

Widget Forgotpass1Login() {
  return GetBuilder<Forgotpass1controller>(
    builder: (controller) => TextButton(
      onPressed: controller.navigetToForgotlogin,
      child: Text(StringRes.ForgotLogin1),
    ),
  );
}
