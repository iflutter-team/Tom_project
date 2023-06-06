import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Products1/Products_controller.dart';
import 'package:tom_project/screen/Product/Products1/Products_widget.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Productscontroller());
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            productsList(),
          ],
        ),
      ),
      bottomNavigationBar: productsadd(),
    );
  }
}
