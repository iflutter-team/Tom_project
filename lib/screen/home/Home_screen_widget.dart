import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/PrivacyPolicy/PrivacyPolicy_screen.dart';
import 'package:tom_project/screen/Profile/Profile_screen.dart';
import 'package:tom_project/screen/Terms%20and%20conditions/Termsconditions_screen.dart';
import 'package:tom_project/screen/home/Home_controller.dart';
import 'package:tom_project/utils/asset_res.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

import '../BottomNavigationBar1/BottomNavigationBar.dart';
import '../FAQs/FAQs_screen.dart';

Widget Listtile() {
  return GetBuilder<Homecontroller>(
    id: 'Update',
    builder: (controller) => ListTile(
      title: Text(
        StringRes.TextAone,
        style: const TextStyle(color: ColorsRes.green1color, fontSize: 20),
      ),
      trailing: Switch(
          value: controller.isOn,
          onChanged: (val) {
            return controller.Update(val);
          }),
    ),
  );
}

Widget HomeText() {
  return Text(
    StringRes.Textview,
    style: const TextStyle(color: ColorsRes.green1color, fontSize: 20),
  );
}

Widget HomeText2() {
  return Text(
    StringRes.Textweek,
    style: const TextStyle(color: ColorsRes.green1color, fontSize: 20),
  );
}

Widget HomeIcon() {
  return const Icon(
    Icons.arrow_drop_down,
    size: 35,
    color: ColorsRes.green1color,
  );
}

Widget HomeExpanded() {
  return Expanded(
    child: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(15),
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(blurRadius: 2),
              ],
              color: ColorsRes.whitecolor),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  StringRes.Textorder,
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  StringRes.Textorder1,
                  style: const TextStyle(
                      color: ColorsRes.green1color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(blurRadius: 2),
              ],
              color: ColorsRes.whitecolor),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  StringRes.Textsales,
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  StringRes.Textsales1,
                  style: const TextStyle(
                      color: ColorsRes.green1color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(blurRadius: 2),
              ],
              color: ColorsRes.whitecolor),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  StringRes.Textstore,
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  StringRes.Textstore1,
                  style: const TextStyle(
                      color: ColorsRes.green1color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(blurRadius: 2),
              ],
              color: ColorsRes.whitecolor),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  StringRes.Texttotal,
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  StringRes.Texttotal1,
                  style: const TextStyle(
                      color: ColorsRes.green1color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ],
    ),
  );
}

Widget HomeDivider() {
  return const Divider(
    height: 30,
    thickness: 2,
    indent: 20,
    endIndent: 20,
    color: Colors.grey,
  );
}

Widget HomeText3() {
  return Text(
    StringRes.Textactive,
    style: const TextStyle(
      color: ColorsRes.green1color,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget HomeText4() {
  return Text(
    StringRes.Textall,
    style: const TextStyle(color: ColorsRes.grey1color, fontSize: 20),
  );
}

Widget HomeIcon2() {
  return const Icon(
    Icons.arrow_forward_ios_outlined,
    size: 20,
    color: ColorsRes.grey1color,
  );
}

Widget Homelist() {
  return Expanded(
    child: ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 150,
          width: 380,
          color: ColorsRes.white2color,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringRes.Textorders,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Texttime,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Textadd,
                    style: const TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    StringRes.Textcod,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: ColorsRes.green2color,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringRes.Textvieworder,
                            style: const TextStyle(
                                color: ColorsRes.whitecolor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 150,
          width: 380,
          color: ColorsRes.white2color,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringRes.Textorders1,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Texttime1,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver1,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Textadd1,
                    style: const TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    StringRes.Textcod1,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: ColorsRes.green2color,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringRes.Textvieworder1,
                            style: const TextStyle(
                                color: ColorsRes.whitecolor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 150,
          width: 380,
          color: ColorsRes.white2color,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringRes.Textorders3,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Texttime3,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver3,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Textadd3,
                    style: const TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    StringRes.Textcod3,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: ColorsRes.green2color,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringRes.Textvieworder3,
                            style: const TextStyle(
                                color: ColorsRes.whitecolor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 150,
          width: 380,
          color: ColorsRes.white2color,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringRes.Textorders4,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Texttime4,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver4,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Textadd4,
                    style: const TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    StringRes.Textcod4,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: ColorsRes.green2color,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringRes.Textvieworder4,
                            style: const TextStyle(
                                color: ColorsRes.whitecolor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 150,
          width: 380,
          color: ColorsRes.white2color,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringRes.Textorders5,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Texttime5,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver5,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Textadd5,
                    style: const TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    StringRes.Textcod5,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: ColorsRes.green2color,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringRes.Textvieworder5,
                            style: const TextStyle(
                                color: ColorsRes.whitecolor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 150,
          width: 380,
          color: ColorsRes.white2color,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringRes.Textorders6,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Texttime6,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver6,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    StringRes.Textadd6,
                    style: const TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    StringRes.Textcod6,
                    style: const TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: ColorsRes.green2color,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            StringRes.Textvieworder6,
                            style: const TextStyle(
                                color: ColorsRes.whitecolor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget drawer() {
  return GetBuilder<Homecontroller>(
    builder: (controller) =>  Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 350,
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  Image.asset(ImageRes.drawer),
                ],
              ),
            ),
            ListTile(
              title: Text(
                StringRes.drawer1,
                style: const TextStyle(color: ColorsRes.green1color),
              ),
              onTap: ()=> Get.to(const Profiles()),
              leading: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              title: Text(
                StringRes.drawer2,
                style: const TextStyle(color: ColorsRes.green1color),
              ),
              onTap: () {},
              leading: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              title: Text(
                StringRes.drawer3,
                style: const TextStyle(color: ColorsRes.green1color),
              ),
              onTap: () {},
              leading: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              title: Text(
                StringRes.drawer4,
                style: const TextStyle(color: ColorsRes.green1color),
              ),
              onTap: () {},
              leading: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              title: Text(
                StringRes.drawer5,
                style: const TextStyle(color: ColorsRes.green1color),
              ),
              onTap: () => Get.to(const faqsscreen()),
              leading: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              title: Text(
                StringRes.drawer6,
                style: const TextStyle(color: ColorsRes.green1color),
              ),
              onTap: () => Get.to(const PrivacyPolicy()),
              leading: const Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
              title: Text(
                StringRes.drawer7,
                style: const TextStyle(color: ColorsRes.green1color),
              ),
              onTap: () => Get.to(const termsconditionsScreen()),
              leading: const Icon(Icons.keyboard_arrow_down),
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  ),
                  onPressed: controller.navigetTologin,
                  child: Text(
                    StringRes.drawerlogout,
                    style: const TextStyle(color: ColorsRes.green1color,fontSize: 20),
                  ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
