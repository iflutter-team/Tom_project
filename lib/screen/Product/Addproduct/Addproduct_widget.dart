import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/common/Textfiled.dart';
import 'package:tom_project/screen/Product/Addproduct/Addproduct_controller.dart';
import 'package:tom_project/utils/string_res.dart';

Widget Iconarrowback() {
  return GetBuilder<addproductcontroller>(
    id:  'update',
    builder: (controller) => IconButton(
        onPressed: controller.navigetToProducts,
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        )),
  );
}

Widget product(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const SizedBox(height: 30),
      GetBuilder<addproductcontroller>(
        builder: (controller) {
          return textFieldCommon(controller.discount, "Discount",);
        },
      ),
      const SizedBox(height: 20),
      GetBuilder<addproductcontroller>(
        builder: (controller) {
          return textFieldCommon(controller.Stock, "Stock",);
        },
      ),
      const SizedBox(height: 30),
      GetBuilder<addproductcontroller>(
        builder: (controller) {
          return textFieldCommon(controller.image, "Image URL",);
        },
      ),
      const SizedBox(height: 20),
      GetBuilder<addproductcontroller>(
        builder: (controller) {
          return textFieldCommon(controller.Products, "Product Name",);
        },
      ),
      const SizedBox(height: 20),
      GetBuilder<addproductcontroller>(
        builder: (controller) {
          return textFieldCommon(controller.Review, "Review",);
        },
      ),
    ],
  );
}


Widget addproduct() {
  return GetBuilder<addproductcontroller>(
    id: 'newproduct',
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(0),
      child: MaterialButton(
        onPressed: () {
          if(
          controller.discount.text.isNotEmpty&&
              controller.Stock.text.isNotEmpty&&
              controller.image.text.isNotEmpty&&
              controller.Products.text.isNotEmpty&&
              controller.Review.text.isNotEmpty
          ){
            controller.insertData();
          }else{
            Get.snackbar("Data is empty","please fill All data");
          }
        },
        color: Colors.green,
        child: Text(
          StringRes.TextAddProduct,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    ),
  );
}