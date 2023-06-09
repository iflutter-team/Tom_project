import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Addproduct/Addproduct_controller.dart';
import 'package:tom_project/screen/Product/Addproduct/Addproduct_widget.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

class Addproduct extends StatelessWidget {
  const Addproduct({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(addproductcontroller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsRes.whitecolor,
        leading: Iconarrowback(),
        title: Text(
          StringRes.TextAddProduct,
          style: const TextStyle(color: ColorsRes.blackcolor),
        ),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: product(),
        ),
      bottomNavigationBar: addproduct(),
    );
  }
}
