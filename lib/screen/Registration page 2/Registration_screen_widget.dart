import 'package:flutter/material.dart';
import 'package:tom_project/screen/Registration%20page%202/Registration_controller.dart';
import 'package:tom_project/utils/string_res.dart';
import 'package:get/get.dart';

Widget Registrationtitle() {
  return Text(
    StringRes.Registerationtitle,
    style: const TextStyle(fontSize: 25, color: Colors.green),
  );
}

Widget RegistrationTextfiled8() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.account_circle_outlined),
        labelText: StringRes.labelText8title,
        hintText: StringRes.hintText8title,
      ),
    ),
  );
}

Widget RegistrationTextfiled9() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.account_circle_outlined),
        labelText: StringRes.labelText9title,
        hintText: StringRes.hintText9title,
      ),
    ),
  );
}

Widget RegistrationTextfiled10() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.pin_drop_outlined),
        labelText: StringRes.labelText10title,
        hintText: StringRes.hintText10title,
      ),
    ),
  );
}

Widget RegistrationTextfiled11() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.pin),
        labelText: StringRes.labelText11title,
        hintText: StringRes.hintText11title,
      ),
    ),
  );
}

Widget RegistrationTextfiled12() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.pages_outlined),
        labelText: StringRes.labelText12title,
        hintText: StringRes.hintText12title,
      ),
    ),
  );
}

Widget Registrationcheckbox() {
  return GetBuilder<RegistrationController>(
    id: 'check',
    builder: (controller) => Checkbox(
      value: controller.check,
      onChanged: (val) {
        return controller.value(val!);
      },
    ),
  );
}

Widget Registrationcheck() {
  return Text(
    StringRes.Registerationchekbox,
    style: const TextStyle(
        fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal),
  );
}

Widget RegistrationrSign() {
  return GetBuilder<RegistrationController>(
    builder: (controller) => MaterialButton(
        minWidth: 300,
        color: Colors.green,
        onPressed: controller.navigetToRegistration,
        child: Text(
          StringRes.Registeration1,
          style: TextStyle(color: Colors.white),
        )),
  );
}

Widget Registrationaccount() {
  return Text(
    StringRes.Registerationaccount,
    style: const TextStyle(
      fontSize: 15,
      color: Colors.black,
    ),
  );
}

Widget RegistrationLogin() {
  return GetBuilder<RegistrationController>(
      builder: (controller) => TextButton(
          onPressed: () => controller.navigetToRegistrationLogin(),
          child: Text(StringRes.RegisterationLogin)));
}
