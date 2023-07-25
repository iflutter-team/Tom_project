import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/viewproduct/view_product_controller.dart';
import 'package:tom_project/screen/viewproduct/view_product_widget.dart';

import '../../utils/color_res.dart';

class View extends StatelessWidget {
  final int? index;
  const View({super.key, this.index,});

  @override
  Widget build(BuildContext context) {
    Get.put(ViewProductcontroller());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Products Details"
          ),
          actions: [
            IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.favorite,color: ColorsRes.whitecolor,),
            ),
          ],
        ),
        backgroundColor: Colors.white,
       body: SingleChildScrollView(
           child: Column(
             children: [
               viewproduct(),
               text(),
             ],
           ),
       ),
        bottomNavigationBar: cart(),
      ),
    );
  }
}
