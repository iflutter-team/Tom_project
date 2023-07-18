import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/viewproduct/view_product_controller.dart';
import 'package:tom_project/screen/viewproduct/view_product_widget.dart';



class View extends StatelessWidget {
  final int? image;
    View({super.key, this.image});

  final ViewProductcontroller viewProductcontroller = Get.put(ViewProductcontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: viewproduct(),
        bottomNavigationBar: cart(),
      ),
    );
  }
}



