import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/home/Home_controller.dart';
import 'package:tom_project/screen/home/Home_screen_widget.dart';
import 'package:tom_project/utils/color_res.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(
      Homecontroller(),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsRes.whitecolor,
        leading: appbarIcon(),
        title: appbarimage(),
        actions: [
          appbarIcon2(),
          appbarIcon3(),
        ],
      ),
      body: Column(
        children: [
          Listtile(),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              HomeText(),
              Spacer(),
              HomeText2(),
              SizedBox(
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
              SizedBox(
                height: 15,
              ),
              HomeText3(),
              Spacer(),
              HomeText4(),
              SizedBox(
                width: 10,
              ),
              HomeIcon2(),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Homelist(),
        ],
      ),
      //bottomNavigationBar: Homenavigatoer(),
    );
  }
}
