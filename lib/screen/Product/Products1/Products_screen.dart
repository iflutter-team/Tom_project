import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Products1/Products_controller.dart';
import 'package:tom_project/screen/Product/Products1/Products_widget.dart';

class Products extends StatelessWidget {
  final int? index;
   const Products({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    Get.put(Productscontroller());
    return Scaffold(
      body:  Center(
        child: Column(
          children: [
            productadd(),
          ],
        ),
      ),
      bottomNavigationBar: productsadd(),
    );
  }
}
