import 'package:flutter/material.dart';
import 'package:tom_project/screen/Register/Register_screen.dart';
import 'package:tom_project/utils/string_res.dart';
import '../home/Home_screen.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

Widget logintitle() {
  return Text(StringRes.logintitle,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.green),);
}

Widget loginTextfiled(){
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        prefixIcon: const Icon(Icons.mail),
        labelText: StringRes.labelTexttitle,
        hintText: StringRes.hintTexttitle,
      ),
    ),
  );
}
Widget loginTextfiled1(){
  return Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        prefixIcon: const Icon(Icons.lock),
        labelText: StringRes.labelText1title,
        hintText: StringRes.hintText1title,
      ),
    ),
  );
}
Widget logincheckbox() {
  return Text(StringRes.loginchekbox,style: const TextStyle(fontSize: 15,color: Colors.black),);
}
Widget loginbutton() {
  return GetBuilder<LoginController>(
    builder: (controller) => MaterialButton(
      minWidth: 200,
      color: Colors.green,
      onPressed:  controller.navigetToLoginscreen,
      child: Text(StringRes.logintitle1, style: const TextStyle(color: Colors.white),),
    ),
  );
}
Widget loginpass() {
  return Text(StringRes.loginpass,style: const TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),);
}
Widget loginaccount() {
  return Text(StringRes.loginaccount,style: const TextStyle(fontSize: 15,color: Colors.black,),);
}
