import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/viewproduct/view_product_controller.dart';
import 'package:tom_project/screen/viewproduct/view_product_widget.dart';

class View extends StatelessWidget {
  final int? index;
  const View({super.key, this.index,});

  @override
  Widget build(BuildContext context) {
    Get.put(ViewProductcontroller(index,));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Products Details"
          ),
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
