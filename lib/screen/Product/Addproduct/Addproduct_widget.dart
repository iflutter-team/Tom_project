import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Addproduct/Addproduct_controller.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

Widget Iconarrowback() {
  return GetBuilder<addproductcontroller>(
    builder: (controller) => IconButton(
        onPressed: controller.navigetToProducts,
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        )),
  );
}

Widget Texttitle() {
  return Text(
    StringRes.TextProductImage,
    style: const TextStyle(
      color: ColorsRes.green1color,
      fontSize: 20,
    ),
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
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    child: const Center(
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
    ),
  );
}

Widget addtextfiled() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
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
    ),
  );
}

Widget addtextfiled2() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down)),
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
    ),
  );
}

Widget Texttitle4() {
  return Text(
    StringRes.TextSellingPrice,
    style: const TextStyle(
      color: ColorsRes.green1color,
      fontSize: 20,
    ),
  );
}

Widget addtextfiled3() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

Widget addtextfiled4() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

Widget Texttitle5() {
  return Text(
    StringRes.TextStock,
    style: const TextStyle(
      color: ColorsRes.green1color,
      fontSize: 20,
    ),
  );
}

Widget addtextfiled5() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: TextField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(Icons.add, color: Colors.green),
              ),
              Container(
                height: 30,
                width: 30,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(Icons.remove, color: Colors.green),
              ),
            ],
          )),
    ),
  );
}

Widget Texttitle6() {
  return Text(
    StringRes.Textunit,
    style: const TextStyle(
      color: ColorsRes.green1color,
      fontSize: 20,
    ),
  );
}

Widget addtextfiled6() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

Widget Texttitle7() {
  return Text(
    StringRes.TextProductDescription,
    style: const TextStyle(
      color: ColorsRes.green1color,
      fontSize: 20,
    ),
  );
}

Widget addtextfiled7() {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}

Widget addproduct() {
  return GetBuilder<addproductcontroller>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(0),
      child: MaterialButton(
        onPressed: () {},
        color: Colors.green,
        child: Text(
          StringRes.TextAddProduct,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    ),
  );
}

Widget dropdownbutton() {
  return GetBuilder<addproductcontroller>(
    builder: (controller) => DropdownButton(
        isExpanded: true,
        style: const TextStyle(color: ColorsRes.blackcolor, fontSize: 15),
        iconSize: 30,
        borderRadius: BorderRadius.circular(15),
        focusColor: Colors.green,
        value: controller.vandan,
        items: controller.items,
        onChanged: (value) {
          controller.vandan = value.toString();
          controller.update();
        }),
  );
}
