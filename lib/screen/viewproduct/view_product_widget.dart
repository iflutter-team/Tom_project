import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/viewproduct/view_product_controller.dart';
import 'package:tom_project/utils/string_res.dart';


Widget viewproduct() {
  return GetBuilder<ViewProductcontroller>(
      id: 'add',
      builder: (controller) {
        return Column(
          children: [
            // CarouselSlider(
            //   options: CarouselOptions(height: 400.0),
            //   items: controller.image.map((i) {
            //     return Builder(
            //       builder: (BuildContext context) {
            //         return Container(
            //             width: MediaQuery.of(context).size.width,
            //             margin: const EdgeInsets.symmetric(horizontal: 5.0),
            //             decoration: const BoxDecoration(
            //                 color: Colors.white
            //             ),
            //             child: Container(
            //               width: 100,
            //               height: 100,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(15),
            //                 image: DecorationImage(
            //                   image: NetworkImage(i),
            //                 ),
            //               ),
            //             ),
            //             //Text('text $i', style: TextStyle(fontSize: 16.0),)
            //         );
            //       },
            //     );
            //   }).toList(),
            // ),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(controller.data[0]),
                ),
              ),
             ),
          ],
        );
      }
  );
}

Widget text() {
  return GetBuilder<ViewProductcontroller>(
    id: 'add',
    builder: (controller) =>
        Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Products:- ${controller.data[1].toString()}',
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    const Spacer(),
                    GetBuilder<ViewProductcontroller>(
                      id: 'like',
                       builder: (controller) {
                        return GestureDetector(
                           onTap: () {
                             controller.favorite();
                           },
                           child: controller.value ? const Icon(
                             Icons.favorite,
                             color: Colors.pink,
                           ) : const Icon(
                             Icons.favorite_border,
                             color: Colors.grey,
                           ),
                         );
                       }
                    ),
                  ],
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text(
                  "Fruits",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  height: 20,
                  width: 10,
                ),
                const Text(
                  "45.00",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    controller.remove();
                  },
                  icon: const Icon(Icons.remove),
                ),
                Text(controller.counter.toString()),
                IconButton(
                  onPressed: () {
                    controller.add();
                  },
                  icon: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Discount:-   ${controller.data[2].toString()}',
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Stock:-   ${controller.data[3].toString()}',
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Description",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: Get.width,
                    child: Text(
                      StringRes.descrpiton1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: Get.width,
                    child: Text(
                      StringRes.descrpiton2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: Get.width,
                    child: Text(
                      StringRes.descrpiton3,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
  );
}





Widget cart() {
  return MaterialButton(
    color: Colors.green,
    minWidth: 500,
    onPressed: () {
      Get.back();
    },
    child: const Text(
      "ADD TO CART",
      style: TextStyle(color: Colors.white),
    ),
  );
}

