import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Addproduct/Addproduct_screen.dart';

import '../../viewproduct/view_product_screen.dart';

class Productscontroller extends GetxController {
  DatabaseReference database = FirebaseDatabase.instance.ref("productdata");

  int counter = 0;

  Future<void> edit(String? plus) async {
    DatabaseReference ref = database.ref.child(plus!);
    await ref.update({
      "stockValue": counter++,
    });
  }

  Future<void> updateproduct(
    String image,
    String products,
    String discount,
    String stock,
    String stockValue,
    var key,
  ) async {
    Map<String, String> x = {
      "image": image,
      "Products": products,
      "discount": discount,
      "Stock": stock,
      "stockValue": stockValue,
    };
    database.ref.child(key).update(x);
    Get.back();
    update();
  }

  Future<void> updatedailog(
      int index,
      String image,
      String products,
      String discount,
      String stock,
      String stockValue,
      BuildContext context,
      var key) {
    TextEditingController imageController = TextEditingController(text: image);
    TextEditingController productsController =
        TextEditingController(text: products);
    TextEditingController discountController =
        TextEditingController(text: discount);
    TextEditingController stockController = TextEditingController(text: stock);
    TextEditingController stockValueController =
        TextEditingController(text: stockValue);
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: SizedBox(
            height: Get.height * 0.45,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Update Products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text("image"),
                    ),
                    controller: imageController,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text("products"),
                    ),
                    controller: productsController,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text("discount"),
                    ),
                    controller: discountController,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text("stock"),
                    ),
                    controller: stockController,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      label: Text("Stock Items"),
                    ),
                    controller: stockValueController,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          updateproduct(
                              imageController.text,
                              productsController.text,
                              discountController.text,
                              stockController.text,
                              stockValueController.text,
                              key);
                          update();
                        },
                        child: const Text(
                          "Update",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15,),
                      TextButton(
                        onPressed: () {
                          Get.back();
                          update();
                        },
                        child: const Text(
                          "cancel",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // Future<void> editremove(String key) async {
  //   DatabaseReference ref = FirebaseDatabase.instance.ref(key);
  //   await ref.update({
  //     "stockValue": counter--,
  //   });
  // }

  void add(String? plus) {
    edit(plus);
    update(['add']);
  }

  void remove(
    String? key,
  ) {
    if (counter != 0) {
      //editremove(key!);
      counter--;
    }
    update(['add']);
  }

  void navigetToview(
    int index,
    String image,
    String products,
    String discount,
    String stock,
    String stockValue,
  ) {
    Get.to(
      Viewscreen(
        index: index,
      ),
      arguments: [
        image,
        products,
        discount,
        stock,
        stockValue,
      ],
    );
  }

  void navigetToAddproduct() {
    Get.to(
      () => const Addproduct(),
    );
  }

  void navigetToback() {
    Get.back();
    update(['back']);
  }
}
