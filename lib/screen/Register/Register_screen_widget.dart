import 'package:flutter/material.dart';
import 'package:tom_project/screen/login/Login_screen.dart';
import 'package:tom_project/services/pref_service.dart';
import 'package:tom_project/utils/PrefrenceRes.dart';
import 'package:tom_project/utils/asset_res.dart';
import 'package:tom_project/utils/string_res.dart';
import 'package:get/get.dart';
import 'Register_controller.dart';

Widget Imageregister() {
  return const Image(
    image: AssetImage(ImageRes.register),
  );
}

Widget Registertitle() {
  return Text(
    StringRes.Registertitle,
    style: const TextStyle(fontSize: 20, color: Colors.green),
  );
}

Widget RegisterTextfiled2() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(Icons.manage_accounts),
        labelText: StringRes.labelText2title,
        hintText: StringRes.hintText2title,
      ),
    ),
  );
}

Widget RegisterTextfiled3() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(Icons.mail_outline),
        labelText: StringRes.labelText3title,
        hintText: StringRes.hintText3title,
      ),
    ),
  );
}

Widget RegisterTextfiled4() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(Icons.account_circle_outlined),
        labelText: StringRes.labelText4title,
        hintText: StringRes.hintText4title,
      ),
    ),
  );
}

Widget RegisterTextfiled5() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(Icons.lock),
        labelText: StringRes.labelText5title,
        hintText: StringRes.hintText5title,
      ),
    ),
  );
}

Widget RegisterTextfiled6() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(Icons.lock_open),
        labelText: StringRes.labelText6title,
        hintText: StringRes.hintText6title,
      ),
    ),
  );
}

Widget RegisterTextfiled7() {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(Icons.important_devices_outlined),
        labelText: StringRes.labelText7title,
        hintText: StringRes.hintText7title,
      ),
    ),
  );
}

Widget Registercheckbox() {
  return GetBuilder<RegisterController>(
    id: 'right',
    builder: (controller) => Checkbox(
      value: controller.right,
      onChanged: (val) {
        return controller.change(val!);
      },
    ),
  );
}

Widget Registercheck() {
  return Text(
    StringRes.Registerchekbox,
    style: const TextStyle(
        fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal),
  );
}

Widget Registernext() {
  return GetBuilder<RegisterController>(
    builder: (controller) => MaterialButton(
        minWidth: 300,
        color: const Color(0xFF227c3e),
        onPressed: () => controller.navigetToRegistrationLogin(),
        //     () {
        //   Preferenceservices.setValue(PrefrenceRes.signupUser, true);
        //   controller.addData();
        // },
        child: Text(
          StringRes.Registeration1,
          style: const TextStyle(color: Colors.white),
        )),
  );
}

Widget Registeraccount() {
  return Text(
    StringRes.Registeraccount,
    style: const TextStyle(
      fontSize: 15,
      color: Colors.black,
    ),
  );
}

Widget RegisterLogin() {
  return GetBuilder<RegisterController>(
      builder: (controller) => TextButton(
          onPressed: () => controller.navigetToRegistrationLogin(),
          child: Text(StringRes.RegisterLogin)));
}
