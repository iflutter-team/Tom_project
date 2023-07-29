import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Products1/Products_controller.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

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

Widget productadd() {
  return GetBuilder<Productscontroller>(
    id: 'add',
    builder: (controller) =>
        Expanded(
          child: FirebaseAnimatedList(
              query: controller.database,
              itemBuilder: (context,snapshot,animation,index) {

                List<Object> data = [
                  snapshot.child('image').value.toString(),
                  snapshot.child('discount').value.toString(),
                  snapshot.child("Stock").value.toString(),
                  snapshot.child('Products').value.toString(),
                  snapshot.child('stockValue').value.toString(),
              ];

              return Card(
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: ColorsRes.addcolor,
                  child: GestureDetector(
                    onTap: () {

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
                                  //snapshot.child('image').value.toString(),
                                  data[0].toString(),
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
                                  Text(data[1].toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("Stock:-  "),
                                  Text(data[2].toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("Products:-  "),
                                  Text(data[3].toString()),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("Stock Items:-  "),
                                  Text(data[4].toString()),
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: (){
                              controller.updatedailog(
                                index,
                                snapshot.child('image').value.toString(),
                                snapshot.child('Products').value.toString(),
                                snapshot.child('discount').value.toString(),
                                snapshot.child("Stock").value.toString(),
                                snapshot.child('stockValue').value.toString(),
                                context,
                                snapshot.key,
                              );
                            },
                            icon: const Icon(Icons.edit),
                          ),
                      //     GetBuilder<Productscontroller>(
                      //       id: 'add',
                      //       builder: (controller) {
                      //         return Column(
                      //           children: [
                      //             IconButton(
                      //               onPressed: () {
                      //                 var key = snapshot.key;
                      //                 controller.remove(key);
                      //               },
                      //               icon: const Icon(Icons.remove),
                      //             ),
                      //             Text(data[4].toString()),
                      //             IconButton(
                      //               onPressed: () {
                      //                 var plus = snapshot.key;
                      //                 controller.add(plus);
                      //               },
                      //               icon: const Icon(Icons.add),
                      //             ),
                      //           ],
                      //         );
                      //       },
                      //     ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
  );
}

