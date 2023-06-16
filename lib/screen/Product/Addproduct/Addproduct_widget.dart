import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Addproduct/Addproduct_controller.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

Widget Iconarrowback() {
  return GetBuilder<addproductcontroller>(
    builder: (controller) => IconButton(
        onPressed: controller.navigetToProducts,
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        )),
  );
}

Widget Texttitle() {
  return Text(
    StringRes.TextProductImage,
    style: TextStyle(
        color: ColorsRes.green1color,
        fontSize: 20,
        fontWeight: FontWeight.bold),
  );
}

Widget ProductImage() {
  return Container(
    height: 80,
    width: 80,
    decoration: BoxDecoration(
      border: Border.all(
          width: 2,
          strokeAlign: BorderSide.strokeAlignInside,
          color: ColorsRes.green1color),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Center(
      child: Icon(
        Icons.camera_alt_outlined,
        size: 25,
        color: ColorsRes.green1color,
      ),
    ),
  );
}

Widget Texttitle1() {
  return Text(
    StringRes.TextProductName,
    style: const TextStyle(
        color: ColorsRes.green1color,
        fontSize: 20,
        fontWeight: FontWeight.bold),
  );
}

Widget addtextfiled() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

Widget Texttitle2() {
  return Text(
    StringRes.TextSelectCategory,
    style: const TextStyle(
        color: ColorsRes.green1color,
        fontSize: 20,
        fontWeight: FontWeight.bold),
  );
}

Widget addtextfiled2() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

Widget Texttitle3() {
  return Text(
    StringRes.TextRegularPrice,
    style: const TextStyle(
        color: ColorsRes.green1color,
        fontSize: 20,
        fontWeight: FontWeight.bold),
  );
}

Widget Texttitle4() {
  return Text(
    StringRes.TextSellingPrice,
    style: const TextStyle(
        color: ColorsRes.green1color,
        fontSize: 20,
        fontWeight: FontWeight.bold),
  );
}

Widget addtextfiled3() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}

Widget addtextfiled4() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
