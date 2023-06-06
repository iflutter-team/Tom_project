import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/utils/asset_res.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';
import 'Forgot_pass_controller.dart';

Widget Imageforgot() {
  return const Image(
    image: AssetImage(ImageRes.forgot),
  );
}

Widget Texttitle() {
  return Text(
    StringRes.Forgottitle,
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
      color: const Color(0xFF227c3e),
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
          onPressed: controller.navigetToForgotlogin,
          child: Text(StringRes.ForgotLogin)));
}
