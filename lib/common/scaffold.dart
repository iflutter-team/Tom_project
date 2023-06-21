import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/utils/color_res.dart';

class scaffold extends StatelessWidget {
  const scaffold({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Positioned(
            top: -100,
            left: -90,
            child: Container(
              height: 240,
              width: 240,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsRes.greenColor,
                boxShadow: [BoxShadow(blurRadius: 8)],
              ),
            ),
          ),
          Positioned(
            top: Get.height / 2,
            left: -130,
            child: Container(
              height: 160,
              width: 160,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsRes.greenColor,
                boxShadow: [BoxShadow(blurRadius: 8)],
              ),
            ),
          ),
          Positioned(
            bottom: -100,
            right: -100,
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsRes.greenColor,
                boxShadow: [BoxShadow(blurRadius: 8)],
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.25,
            right: -140,
            child: Container(
              height: 180,
              width: 180,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsRes.greenColor,
                boxShadow: [BoxShadow(blurRadius: 8)],
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.10,
            left: Get.width * 0.70,
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsRes.greenColor,
                boxShadow: [BoxShadow(blurRadius: 8)],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
