import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Profile/Profile_controller.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

Widget profiletitle1() {
  return GetBuilder<profilecontroller>(
    id: 'update',
    builder: (controller) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        controller.file != null
            ? Container(
                height: 100,
                width: Get.width / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: FileImage(
                      controller.file!,
                    ),
                  ),
                  shape: BoxShape.circle,
                  color: Colors.blueGrey.shade200,
                ),
                child: GestureDetector(
                  onTap: () => controller.onTapSelectImage(),
                ),
              )
            : GestureDetector(
                onTap: () => controller.onTapSelectImage(),
                child: const CircleAvatar(
                  radius: 50,
                  child: Center(
                    child: Icon(Icons.camera_alt_outlined),
                  ),
                ),
              ),
      ],
    ),
  );
}

Widget editprofile() {
  return GetBuilder<profilecontroller>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MaterialButton(
        onPressed: controller.navigetToeditprofile,
        color: ColorsRes.green2color,
        child: Text(
          StringRes.edit,
          style: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget update() {
  return GetBuilder<profilecontroller>(
    id: 'loginUser',
    builder: (controller) => Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
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
             //controller.loginUser!.name.toString(),
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
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
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
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
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
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
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
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
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
        ),
      ],
    ),
  );
}

Widget Profile(){
  return GetBuilder<profilecontroller>(
      builder: (controller) => Expanded(
        child: FirebaseAnimatedList(
            query: controller.ref,
            itemBuilder: (context, snapshot, animation, index){
              return Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
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
                        //controller.loginUser!.name.toString(),
                        snapshot.child('name').value.toString(),
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
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
                        snapshot.child('email').value.toString(),
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
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
                        snapshot.child('number').value.toString(),
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
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
                  ),
                ],
              );
            }
        ),
      ),
  );
}