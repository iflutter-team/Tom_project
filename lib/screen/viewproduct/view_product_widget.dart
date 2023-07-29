// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tom_project/screen/viewproduct/view_product_controller.dart';
// import 'package:tom_project/utils/string_res.dart';
//
//
// Widget viewproduct() {
//   return GetBuilder<ViewProductcontroller>(
//       id: 'add',
//       builder: (controller) {
//         return Column(
//           children: [
//             // CarouselSlider(
//             //   options: CarouselOptions(height: 400.0),
//             //   items: controller.image.map((i) {
//             //     return Builder(
//             //       builder: (BuildContext context) {
//             //         return Container(
//             //             width: MediaQuery.of(context).size.width,
//             //             margin: const EdgeInsets.symmetric(horizontal: 5.0),
//             //             decoration: const BoxDecoration(
//             //                 color: Colors.white
//             //             ),
//             //             child: Container(
//             //               width: 100,
//             //               height: 100,
//             //               decoration: BoxDecoration(
//             //                 borderRadius: BorderRadius.circular(15),
//             //                 image: DecorationImage(
//             //                   image: NetworkImage(i),
//             //                 ),
//             //               ),
//             //             ),
//             //             //Text('text $i', style: TextStyle(fontSize: 16.0),)
//             //         );
//             //       },
//             //     );
//             //   }).toList(),
//             // ),
//             Container(
//               width: double.infinity,
//               height: 250,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(
//                   image: NetworkImage(controller.data[0]),
//                 ),
//               ),
//              ),
//           ],
//         );
//       }
//   );
// }
//
// Widget text() {
//   return GetBuilder<ViewProductcontroller>(
//     id: 'add',
//     builder: (controller) =>
//         Column(
//           children: [
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       'Products:- ${controller.data[1].toString()}',
//                       style: const TextStyle(fontSize: 20, color: Colors.black),
//                     ),
//                     const Spacer(),
//                     GetBuilder<ViewProductcontroller>(
//                       id: 'like',
//                        builder: (controller) {
//                         return GestureDetector(
//                            onTap: () {
//                              controller.favorite();
//                            },
//                            child: controller.value ? const Icon(
//                              Icons.favorite,
//                              color: Colors.pink,
//                            ) : const Icon(
//                              Icons.favorite_border,
//                              color: Colors.grey,
//                            ),
//                          );
//                        }
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const Row(
//               children: [
//                 SizedBox(
//                   height: 10,
//                   width: 10,
//                 ),
//                 Text(
//                   "Fruits",
//                   style: TextStyle(color: Colors.green, fontSize: 20),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 const SizedBox(
//                   height: 20,
//                   width: 10,
//                 ),
//                 const Text(
//                   "45.00",
//                   style: TextStyle(color: Colors.green, fontSize: 30),
//                 ),
//                 const Spacer(),
//                 IconButton(
//                   onPressed: () {
//                     controller.remove();
//                   },
//                   icon: const Icon(Icons.remove),
//                 ),
//                 Text(controller.counter.toString()),
//                 IconButton(
//                   onPressed: () {
//                     controller.add();
//                   },
//                   icon: const Icon(Icons.add),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       'Discount:-   ${controller.data[2].toString()}',
//                       style: const TextStyle(color: Colors.black, fontSize: 20),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       'Stock:-   ${controller.data[3].toString()}',
//                       style: const TextStyle(color: Colors.black, fontSize: 20),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const Row(
//               children: [
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   "Description",
//                   style: TextStyle(color: Colors.black, fontSize: 20),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//               ],
//             ),
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: SizedBox(
//                     width: Get.width,
//                     child: Text(
//                       StringRes.descrpiton1,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: SizedBox(
//                     width: Get.width,
//                     child: Text(
//                       StringRes.descrpiton2,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: SizedBox(
//                     width: Get.width,
//                     child: Text(
//                       StringRes.descrpiton3,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//   );
// }
//
//
//
//
//

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/viewproduct/view_product_controller.dart';

Widget datashowprodct() {
  return GetBuilder<ViewProductcontroller>(
    builder: (controller) => Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastLinearToSlowEaseIn,
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.green,
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.7),
                blurRadius: 30,
              ),
            ]
          ),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image:
                      DecorationImage(image: NetworkImage(controller.data[0])),
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 65,),
                  const Text("Products:-  ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(controller.data[1],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 65,),
                  const Text("Discount:-  ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(controller.data[2],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 65,),
                  const Text("Stock:-  ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(controller.data[3],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const SizedBox(width: 65,),
                  const Text("Stock Item:-  ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(controller.data[4],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),

            ],
          ),
        ),
      ],
    ),
  );
}


Widget Edit() {
  return GetBuilder<ViewProductcontroller>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          TextField(
            controller: controller.image,
            decoration: InputDecoration(
              label: const Text('image'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            controller: controller.discount,
            decoration: InputDecoration(
              label: const Text('discount'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            controller: controller.stock,
            decoration: InputDecoration(
              label: const Text('stock'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextField(
            controller: controller.productsdata,
            decoration: InputDecoration(
              label: const Text('productsdata'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),const SizedBox(
            height: 15,
          ),
          TextField(
            controller: controller.stockvalue,
            decoration: InputDecoration(
              label: const Text('stockvalue'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}


Widget cart() {
  return GetBuilder<ViewProductcontroller>(
    id: 'update',
    builder: (controller) => MaterialButton(
      color: Colors.green,
      minWidth: 500,
      onPressed: () {
        Get.back();
      },
      child: const Text(
        "Edit Product",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
