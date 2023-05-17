import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

import 'Forgot_pass_controller.dart';

Widget Texttitle() {
  return Text(
    StringRes.Forgottitle,
    style: TextStyle(
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
          borderRadius: BorderRadius.circular(15),
        ),
        prefixIcon: const Icon(Icons.phone_android),
        labelText: StringRes.labelText13title,
        hintText: StringRes.hintText13title,
      ),
      keyboardType: TextInputType.number,
    ),
  );
}

Widget Forgotbutton() {
  return GetBuilder<Forgotcontroller>(
    builder: (controller) => MaterialButton(
      minWidth: 300,
      color: Color(0xFF227c3e),
      onPressed: controller.navigetToForgot,
      child: Text(
        StringRes.texttitle,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget Forgotaccount() {
  return Text(
    StringRes.Forgotaccount,
    style: const TextStyle(
      fontSize: 15,
      color: Colors.black,
    ),
  );
}

Widget Forgotlogin() {
  return GetBuilder<Forgotcontroller>(
      builder: (controller) => TextButton(
          onPressed: () => controller.navigetToForgot(),
          child: Text(StringRes.ForgotLogin)));
}
