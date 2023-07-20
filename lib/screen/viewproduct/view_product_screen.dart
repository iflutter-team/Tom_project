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
        backgroundColor: Colors.white,
       body: viewproduct(),
        bottomNavigationBar: cart(),
      ),
    );
  }
}
