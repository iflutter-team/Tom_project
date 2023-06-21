import 'package:flutter/material.dart';
import 'package:tom_project/screen/Forgot%20pass/Forgot_pass.dart';
import 'package:tom_project/utils/asset_res.dart';
import 'package:tom_project/utils/string_res.dart';
import 'package:get/get.dart';
import 'Login_controller.dart';

Widget Imagelogin() {
  return const Image(
    image: AssetImage(ImageRes.login),
  );
}

Widget logintitle() {
  return Text(
    StringRes.logintitle,
    style: const TextStyle(
        fontSize: 20, fontWeight: FontWeight.w500, color: Colors.green),
  );
}

Widget loginTextfiled() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(Icons.mail),
        labelText: StringRes.labelTexttitle,
        hintText: StringRes.hintTexttitle,
      ),
    ),
  );
}

Widget loginTextfiled1() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(Icons.lock),
        labelText: StringRes.labelText1title,
        hintText: StringRes.hintText1title,
      ),
    ),
  );
}

Widget logincheckbox() {
  return GetBuilder<LoginController>(
    id: 'change',
    builder: (controller) => Checkbox(
      value: controller.Hello,
      onChanged: (val) {
        return controller.change(val!);
      },
    ),
  );
}

Widget logincheck() {
  return Text(
    StringRes.loginchekbox,
    style: const TextStyle(fontSize: 15, color: Colors.black),
  );
}

// Widget loginbutton() {
//   return GetBuilder<LoginController>(
//     builder: (controller) => MaterialButton(
//       minWidth: 300,
//       color: const Color(0xFF227c3e),
//       onPressed: () {
//         controller.check();
//       },
//       child: Text(
//         StringRes.logintitle1,
//         style: const TextStyle(color: Colors.white),
//       ),
//     ),
//   );
// }

Widget loginButton() {
  return GetBuilder<LoginController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: MaterialButton(
        minWidth: 300,
        color: const Color(0xFF227c3e),
        onPressed: () => controller.check(),
        child: Text(
          StringRes.logintitle1,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget loginaccount() {
  return Text(
    StringRes.loginaccount,
    style: const TextStyle(
      fontSize: 15,
      color: Colors.black,
    ),
  );
}

Widget loginRegister() {
  return GetBuilder<LoginController>(
      builder: (controller) => TextButton(
          onPressed: () => controller.navigetToRegister(),
          child: Text(StringRes.loginRegister)));
}

Widget loginpass() {
  return GetBuilder<LoginController>(
      builder: (controller) => TextButton(
          onPressed: () => Get.to(Forgot()), child: Text(StringRes.loginpass)));
}
