import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/home/Home_controller.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

Widget Listtile() {
  return GetBuilder<Homecontroller>(
    id: 'Update',
    builder: (controller) => ListTile(
      title: Text(
        StringRes.TextAone,
        style: TextStyle(color: ColorsRes.green1color, fontSize: 20),
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
    style: TextStyle(color: ColorsRes.green1color, fontSize: 20),
  );
}

Widget HomeText2() {
  return Text(
    StringRes.Textweek,
    style: TextStyle(color: ColorsRes.green1color, fontSize: 20),
  );
}

Widget HomeIcon() {
  return Icon(
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
      padding: EdgeInsets.all(15),
      physics: NeverScrollableScrollPhysics(),
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(blurRadius: 2),
              ],
              color: ColorsRes.whitecolor),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  StringRes.Textorder,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  StringRes.Textorder1,
                  style: TextStyle(
                      color: ColorsRes.green1color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(blurRadius: 2),
              ],
              color: ColorsRes.whitecolor),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  StringRes.Textsales,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  StringRes.Textsales1,
                  style: TextStyle(
                      color: ColorsRes.green1color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(blurRadius: 2),
              ],
              color: ColorsRes.whitecolor),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  StringRes.Textstore,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  StringRes.Textstore1,
                  style: TextStyle(
                      color: ColorsRes.green1color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: 30,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(blurRadius: 2),
              ],
              color: ColorsRes.whitecolor),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  StringRes.Texttotal,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  StringRes.Texttotal1,
                  style: TextStyle(
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
  return Divider(
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
    style: TextStyle(
      color: ColorsRes.green1color,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget HomeText4() {
  return Text(
    StringRes.Textall,
    style: TextStyle(color: ColorsRes.grey1color, fontSize: 20),
  );
}

Widget HomeIcon2() {
  return Icon(
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
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Texttime,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Textadd,
                    style: TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
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
                    style: TextStyle(
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
                            style: TextStyle(
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
        SizedBox(
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
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Texttime1,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver1,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Textadd1,
                    style: TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
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
                    style: TextStyle(
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
                            style: TextStyle(
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
        SizedBox(
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
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Texttime3,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver3,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Textadd3,
                    style: TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
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
                    style: TextStyle(
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
                            style: TextStyle(
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
        SizedBox(
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
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Texttime4,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver4,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Textadd4,
                    style: TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
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
                    style: TextStyle(
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
                            style: TextStyle(
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
        SizedBox(
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
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Texttime5,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver5,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Textadd5,
                    style: TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
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
                    style: TextStyle(
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
                            style: TextStyle(
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
        SizedBox(
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
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Texttime6,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    StringRes.Textdriver6,
                    style: TextStyle(
                        color: ColorsRes.green1color,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    StringRes.Textadd6,
                    style: TextStyle(
                      color: ColorsRes.grey1color,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
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
                    style: TextStyle(
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
                            style: TextStyle(
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

// Widget Homenavigatoer() {
//   return GetBuilder<Homecontroller>(
//     builder: (controller) => BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: Color(0xFF67bb6a),
//       items: <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(
//             Icons.home_outlined,
//           ),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.menu),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.shopping_bag_outlined),
//           label: '',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.account_circle_outlined),
//           label: '',
//         ),
//       ],
//       currentIndex: controller.tabIndex,
//       selectedItemColor: ColorsRes.whitecolor,
//       onTap: (val) => controller.changeTabIndex(val),
//     ),
//   );
// }
