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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Texttitle(),
            const SizedBox(
              height: 15,
            ),
            ProductImage(),
            const SizedBox(
              height: 15,
            ),
            Texttitle1(),
            const SizedBox(
              height: 10,
            ),
            addtextfiled(),
            const SizedBox(
              height: 10,
            ),
            Texttitle2(),
            const SizedBox(
              height: 10,
            ),
            //addtextfiled2(),
            dropdownbutton(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 100,
                  width: Get.width * 0.45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texttitle3(),
                      addtextfiled2(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: Get.width * 0.45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texttitle4(),
                      addtextfiled3(),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 100,
                  width: Get.width * 0.45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texttitle5(),
                      addtextfiled5(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: Get.width * 0.45,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texttitle6(),
                      addtextfiled6(),
                    ],
                  ),
                ),
              ],
            ),
            Texttitle7(),
            addtextfiled7(),
          ],
        ),
      ),
      bottomNavigationBar: addproduct(),
    );
  }
}
