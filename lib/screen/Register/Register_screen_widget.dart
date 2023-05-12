import 'package:flutter/material.dart';
import 'package:tom_project/utils/string_res.dart';
import 'package:get/get.dart';
import 'Register_controller.dart';

Widget  Registertitle() {
  return Text(StringRes.Registertitle,style: const TextStyle(fontSize: 20,color: Colors.green),
  );
}

Widget RegisterTextfiled2(){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(Icons.account_circle_outlined),
        labelText: StringRes.labelText2title,
        hintText: StringRes.hintText2title,
      ),
    ),
  );
}
Widget RegisterTextfiled3(){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(Icons.account_circle_outlined),
        labelText: StringRes.labelText3title,
        hintText: StringRes.hintText3title,
      ),
    ),
  );
}
Widget RegisterTextfiled4(){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(Icons.account_circle_outlined),
        labelText: StringRes.labelText4title,
        hintText: StringRes.hintText4title,
      ),
    ),
  );
}
Widget RegisterTextfiled5(){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(Icons.account_circle_outlined),
        labelText: StringRes.labelText5title,
        hintText: StringRes.hintText5title,
      ),
    ),
  );
}
Widget RegisterTextfiled6(){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(Icons.account_circle_outlined),
        labelText: StringRes.labelText6title,
        hintText: StringRes.hintText6title,
      ),
    ),
  );
}
Widget RegisterTextfiled7(){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(Icons.account_circle_outlined),
        labelText: StringRes.labelText7title,
        hintText: StringRes.hintText7title,
      ),
    ),
  );
}
Widget Registercheckbox(){
  return GetBuilder<RegisterController>(
    id: 'right',
      builder: (controller) => Checkbox(
          value: controller.right,
          onChanged: (val){ return controller.change(val!);},
      ),
  );
}
Widget  Registercheck() {
  return Text(StringRes.Registerchekbox,style: const TextStyle(fontSize: 15,color: Colors.green,fontWeight: FontWeight.bold),
  );
}
Widget Registernext() {
  return GetBuilder<RegisterController>(
    builder: (controller) => MaterialButton(
      minWidth: 300,
        color: Colors.green,
        onPressed: controller.navigetToRegister,
        child: Text(StringRes.Register1,)
    ),
  );
}
Widget  Registeraccount() {
  return Text(StringRes.Registeraccount,style: const TextStyle(fontSize: 15,color: Colors.black,),
  );
}
Widget RegisterSignup(){
  return GetBuilder<RegisterController>(
      builder: (controller) => TextButton(
          onPressed: ()=>controller.navigetToRegisterhello(),
          child: Text(StringRes.Registersignup)
      )
  );
}