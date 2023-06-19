import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/common/appbar_common.dart';
import 'package:tom_project/screen/home/Home_controller.dart';
import 'package:tom_project/screen/home/Home_screen_widget.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(
      Homecontroller(),
    );
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Listtile(),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              HomeText(),
              const Spacer(),
              HomeText2(),
              const SizedBox(
                width: 15,
              ),
              HomeIcon(),
            ],
          ),
          HomeExpanded(),
          Column(
            children: [
              HomeDivider(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                height: 15,
              ),
              HomeText3(),
              const Spacer(),
              HomeText4(),
              const SizedBox(
                width: 10,
              ),
              HomeIcon2(),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Homelist(),
        ],
      ),
      drawer: drawer(),
    );
  }
}
