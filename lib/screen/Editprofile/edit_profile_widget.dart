import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'edit_profile_controller.dart';

PreferredSizeWidget editProfileAppbar() => AppBar(
  centerTitle: true,
  title: const Text("Edit Profile"),
);



Widget textFieldName() => GetBuilder<EditProfileController>(
    builder: (controller) => TextField(
      controller: controller.name,
      decoration: InputDecoration(
        label: const Text("name"),
        prefixIcon: const Icon(Icons.co_present),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ));

Widget textFieldUserName() => GetBuilder<EditProfileController>(
    builder: (controller) => TextField(
      controller: controller.email,
      decoration: InputDecoration(
        label: const Text("Email"),
        prefixIcon: const Icon(Icons.email),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ));

Widget textFieldMobileNo() => GetBuilder<EditProfileController>(
    builder: (controller) => TextField(
      controller: controller.number,
      decoration: InputDecoration(  label: const Text("Mobile"),
        prefixIcon: const Icon(Icons.phone),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ));

Widget editProfileButton() => GetBuilder<EditProfileController>(
  builder: (controller) => SizedBox(
    height: 35,
    width: 350,
    child: ElevatedButton(
      onPressed:()=> controller.onPressedEditProfile(),
      child: const Text("Edit Profile"),
    ),
  ),
);
