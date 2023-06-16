import 'package:flutter/material.dart';
import 'package:tom_project/screen/BottomNavigationBar1/BottomNavigationBar_widget.dart';
import 'package:tom_project/utils/color_res.dart';

AppBar appBar = AppBar(
  backgroundColor: ColorsRes.whitecolor,
  leading: appbarIcon(),
  title: appbarimage(),
  actions: [
    appbarIcon2(),
    appbarIcon3(),
  ],
);
