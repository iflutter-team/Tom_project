import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Products1/Products_controller.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

import '../Delete/Delete_screen.dart';
import '../product/ProductData.dart';

Widget productsList() {
  return GetBuilder<Productscontroller>(
    id: 'back',
    builder: (controller) =>
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              crossAxisSpacing: 10,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) =>
                Container(
                  margin: const EdgeInsets.all(20),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorsRes.addcolor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(data[index]['discount']),
                          Text(data[index]['Stock']),
                        ],
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                              data[index]['image'],
                            ),
                          ),
                        ),
                      ),
                      Text(
                        data[index]['Products'],
                        style: const TextStyle(color: Colors.black),
                      ),
                      Text(
                        data[index]['pr'],
                        style: const TextStyle(color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) =>
                                    AlertDialog(
                                      title: const Text('Delete'),
                                      content: const Text(
                                          'Are you sure to Delete this massage'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Get.back();
                                            controller.navigetToback();
                                          },
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            data.removeAt(index);
                                            controller.navigetToback();
                                          },
                                          child: const Text('Ok'),
                                        )
                                      ],
                                    ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white),
                            child: const Text(
                              'Delete',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
          ),
        ),
  );
}

Widget productsadd() {
  return GetBuilder<Productscontroller>(
    builder: (controller) =>
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: MaterialButton(
            onPressed: controller.navigetToAddproduct,
            color: ColorsRes.green2color,
            child: Text(
              StringRes.Textproductadd,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
  );
}
