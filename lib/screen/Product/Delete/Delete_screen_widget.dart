import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Delete/Delete_controller.dart';
import 'package:tom_project/utils/asset_res.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

import '../product/ProductData.dart';

Widget deleteproduct() {
  return Container(
    height: 100,
    width: 100,
    decoration: const BoxDecoration(
        image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage(ImageRes.deleteproduct),
    )),
  );
}

Widget deletetext() {
  return Text(
    StringRes.Textdeletetitle1,
    style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
  );
}

Widget deletetext1() {
  return Text(
    StringRes.Textdeletetitle3,
    style: const TextStyle(
        fontWeight: FontWeight.bold, color: ColorsRes.green1color),
  );
}

Widget deletebutton() {
  return GetBuilder<deleteController>(
    id: 'delete',
    builder: (controller) => MaterialButton(
      onPressed: (){
        controller.addproduct();
      },
      color: ColorsRes.green1color,
      height: 40,
      //minWidth: d * 0.70,
      textColor: Colors.white,
      child: Text(
        StringRes.Textdeletetitle1,
        style: const TextStyle(fontSize: 17),
      ),
    ),
  );
}

Widget deletetextbutton() {
  return GetBuilder<deleteController>(
    builder: (controller) => TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(side: const BorderSide(color: Colors.green)),
      child: Text(StringRes.Textdeletetitle2),
    ),
  );
}
