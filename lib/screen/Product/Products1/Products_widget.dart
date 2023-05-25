import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Products1/Products_controller.dart';
import 'package:tom_project/screen/Product/product/productshow.dart';
import 'package:tom_project/utils/asset_res.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

Widget productsList() {
  return Expanded(
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
      ),
      itemCount: 20,
      itemBuilder: (context, index) => ShowProduct(
        discount: 10,
        image: ImageRes.product,
        inStock: true,
        productname: StringRes.Textmango,
      ),
    ),
  );
}

Widget productsadd() {
  return GetBuilder<Productscontroller>(
    builder: (controller) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: MaterialButton(
        onPressed: controller.navigetToAddproduct,
        color: ColorsRes.green2color,
        child: Text(
          StringRes.Textproductadd,
          style: TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
