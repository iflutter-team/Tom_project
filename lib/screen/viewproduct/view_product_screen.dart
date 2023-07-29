import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/viewproduct/view_product_controller.dart';
import 'package:tom_project/screen/viewproduct/view_product_widget.dart';

class Viewscreen extends StatelessWidget {
  final int? index;
  const Viewscreen({super.key, this.index,});

  @override
  Widget build(BuildContext context) {
    Get.put(ViewProductcontroller());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Products Details"
          ),
        ),
        backgroundColor: Colors.white,
       body:  SingleChildScrollView(
           child: Column(
             children: [
               datashowprodct(),
               Edit(),
             ],
           ),
       ),
        bottomNavigationBar: cart(),
      ),
    );
  }
}
