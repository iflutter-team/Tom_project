import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Products1/Products_controller.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';


Widget productsadd() {
  return GetBuilder<Productscontroller>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MaterialButton(
        onPressed: controller.navigetToAddproduct,
        color: ColorsRes.green2color,
        child: Text(
          StringRes.Textproductadd,
          style: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget productadd(){
  return GetBuilder<Productscontroller>(
    id: 'add',
      builder: (controller) => Expanded(
          child: FirebaseAnimatedList(
              query: controller.database,
              itemBuilder: (context, snapshot, animation, index) {
                return Card(
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: ColorsRes.addcolor,
                  child: GestureDetector(
                    onTap: () {
                      //  controller.navigetToview();
                      controller.navigetToview(index);
              },
                    child: ListTile(
                      title: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(
                                  snapshot
                                      .child('image')
                                      .value
                                      .toString(),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text("Discount:- "),
                                  Text(snapshot
                                      .child('discount')
                                      .value
                                      .toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("Stock:-  "),
                                  Text(snapshot
                                      .child("Stock")
                                      .value
                                      .toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("Products:-  "),
                                  Text(
                                    snapshot
                                        .child('Products')
                                        .value
                                        .toString(),
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("Review:-  "),
                                  Text(
                                    snapshot
                                        .child('Review')
                                        .value
                                        .toString(),
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              add(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
          ),
        ),
  );
}

Widget add(){
  return GetBuilder<Productscontroller>(
      builder: (controller) => Row(
        children: [
         //  IconButton(
         //    onPressed: (){
         //      controller.add();
         //    },
         //    icon: const Icon(Icons.add),
         //  ),
         // // Text('$controller.counter'),
         //  IconButton(
         //    onPressed: (){
         //      controller.hello();
         //    },
         //    icon: const Icon(Icons.remove),
         //  ),
        ],
      ),
  );
}


