import 'package:flutter/material.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';


Widget profiletitle1() {
  return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: ColorsRes.green1color,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.camera_alt_outlined,
            color: ColorsRes.whitecolor,
          ),
        ),
      ),
  );
}

Widget profiletitle2() {
  return Text(
    StringRes.profilestitle3,
    style: const TextStyle(color: ColorsRes.green1color, fontSize: 10),
  );
}


Widget profiletitle3(){
  return Row(
    children: [
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.account_circle,
        size: 30,
        color: ColorsRes.green1color,
      ),
      const SizedBox(
        width: 15,
      ),
      Text(
        StringRes.profilestitle10,
        style: const TextStyle(
            color: ColorsRes.green1color,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      const Spacer(),
      Text(
        StringRes.profilestitle3,
        style: TextStyle(
            color: Colors.grey.shade400,
            fontWeight: FontWeight.bold,
            fontSize: 13),
      ),
      const SizedBox(
        width: 10,
      ),
    ],
  );
}



Widget profiletitle5() {
  return Row(
    children: [
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.cake,
        size: 30,
        color: ColorsRes.green1color,
      ),
      const SizedBox(
        width: 15,
      ),
      Text(
        StringRes.profilestitle4,
        style: const TextStyle(
            color: ColorsRes.green1color,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      const Spacer(),
      Text(
        StringRes.profilestitle5,
        style: TextStyle(
            color: Colors.grey.shade400,
            fontWeight: FontWeight.bold,
            fontSize: 13),
      ),
      const SizedBox(
        width: 10,
      ),
    ],
  );
}

Widget profiletitle4() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.edit,
      color: Colors.green,
    ),
  );
}

Widget profiletitle6() {
  return Row(
    children: [
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.email_outlined,
        size: 30,
        color: ColorsRes.green1color,
      ),
      const SizedBox(
        width: 15,
      ),
      Text(
        StringRes.profilestitle6,
        style: const TextStyle(
            color: ColorsRes.green1color,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      const Spacer(),
      Text(
        StringRes.profilestitle7,
        style: TextStyle(
            color: Colors.grey.shade400,
            fontWeight: FontWeight.bold,
            fontSize: 13),
      ),
      const SizedBox(
        width: 10,
      ),
    ],
  );
}

Widget profiletitle7() {
  return Row(
    children: [
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.phone_android_outlined,
        size: 30,
        color: ColorsRes.green1color,
      ),
      const SizedBox(
        width: 15,
      ),
      Text(
        StringRes.profilestitle8,
        style: const TextStyle(
            color: ColorsRes.green1color,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      const Spacer(),
      Text(
        StringRes.profilestitle9,
        style: TextStyle(
            color: Colors.grey.shade400,
            fontWeight: FontWeight.bold,
            fontSize: 13),
      ),
      const SizedBox(
        width: 10,
      ),
    ],
  );
}

Widget profiletitle8() {
  return Row(
    children: [
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.lock,
        size: 30,
        color: ColorsRes.green1color,
      ),
      const SizedBox(
        width: 15,
      ),
      Text(
        StringRes.profilestitle11,
        style: const TextStyle(
            color: ColorsRes.green1color,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      const Spacer(),
      const Icon(
        Icons.edit,
        size: 30,
        color: ColorsRes.green1color,
      ),
      const SizedBox(
        width: 10,
      ),
    ],
  );
}
