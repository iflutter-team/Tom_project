import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/viewproduct/view_product_controller.dart';
import 'package:tom_project/screen/viewproduct/view_product_widget.dart';

class view extends StatelessWidget {
  //String image;
   view({super.key,
   //  required this.image
   });

  @override
  Widget build(BuildContext context) {
    Get.put(viewProductcontroller());
    return SafeArea(
      child: Scaffold(
        body: viewproduct(),
        bottomNavigationBar: cart(),
      ),
    );
  }
}
