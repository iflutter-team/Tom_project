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
    StringRes.profilestitle2,
    style: const TextStyle(
        color: ColorsRes.green1color,
        fontWeight: FontWeight.bold,
        fontSize: 25),
  );
}

Widget profiletitle3() {
  return Text(
    StringRes.profilestitle3,
    style: const TextStyle(color: ColorsRes.green1color, fontSize: 10),
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

Widget profiletitle5() {
  return Row(
    children: [
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.male_rounded,
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

Widget profiletitle6() {
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
        Icons.email_outlined,
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
        Icons.phone_android_outlined,
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
        StringRes.profilestitle11,
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

Widget profiletitle9() {
  return Row(
    children: [
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.contact_mail_outlined,
        size: 30,
        color: ColorsRes.green1color,
      ),
      const SizedBox(
        width: 15,
      ),
      Text(
        StringRes.profilestitle12,
        style: const TextStyle(
            color: ColorsRes.green1color,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
      const Spacer(),
      Container(
        height: 35,
        width: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: ColorsRes.green1color,
        ),
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Text(
              StringRes.profilestitle17,
              style: const TextStyle(color: ColorsRes.whitecolor),
            ),
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
    ],
  );
}

Widget profiletitle10() {
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
        StringRes.profilestitle13,
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

Widget profiletitle11() {
  return Row(
    children: [
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.location_on,
        size: 30,
        color: ColorsRes.green1color,
      ),
      const SizedBox(
        width: 15,
      ),
      Text(
        StringRes.profilestitle14,
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

Widget profiletitle12() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget profiletitle13() {
  return Row(
    children: [
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.location_on,
        size: 30,
        color: ColorsRes.green1color,
      ),
      const SizedBox(
        width: 15,
      ),
      Text(
        StringRes.profilestitle15,
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

Widget profiletitle14() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget profiletitle15() {
  return Row(
    children: [
      const SizedBox(
        width: 15,
      ),
      const Icon(
        Icons.account_balance,
        size: 30,
        color: ColorsRes.green1color,
      ),
      const SizedBox(
        width: 15,
      ),
      Text(
        StringRes.profilestitle16,
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

Widget bankdetails() {
  return Container(
    height: 180,
    width: 370,
    decoration: BoxDecoration(
      color: ColorsRes.whitecolor,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      border: Border.all(
        width: 1,
        color: ColorsRes.green1color,
      ),
    ),
    child: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              StringRes.bankDetails1,
              style:
                  const TextStyle(color: ColorsRes.green1color, fontSize: 15),
            ),
            const Spacer(),
            Text(
              StringRes.bankDetails2,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              StringRes.bankDetails3,
              style:
                  const TextStyle(color: ColorsRes.green1color, fontSize: 15),
            ),
            const Spacer(),
            Text(
              StringRes.bankDetails4,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              StringRes.bankDetails5,
              style:
                  const TextStyle(color: ColorsRes.green1color, fontSize: 15),
            ),
            const Spacer(),
            Text(
              StringRes.bankDetails6,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              StringRes.bankDetails7,
              style:
                  const TextStyle(color: ColorsRes.green1color, fontSize: 15),
            ),
            const Spacer(),
            Text(
              StringRes.bankDetails8,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              StringRes.bankDetails9,
              style:
                  const TextStyle(color: ColorsRes.green1color, fontSize: 15),
            ),
            const Spacer(),
            Text(
              StringRes.bankDetails10,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              StringRes.bankDetails11,
              style:
                  const TextStyle(color: ColorsRes.green1color, fontSize: 15),
            ),
            const Spacer(),
            Text(
              StringRes.bankDetails12,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ],
    ),
  );
}
