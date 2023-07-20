import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tom_project/screen/viewproduct/view_product_controller.dart';



Widget viewproduct(){
  return  GetBuilder<ViewProductcontroller>(
    id: 'add',
    builder: (controller) {
       return Column(
        children: [
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
           Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                'Products:- ${controller.data[1].toString()}',
                style: const TextStyle(fontSize: 25, color: Colors.black),
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
                onPressed: (){
                  controller.hello();
                },
                icon: const Icon(Icons.remove),
              ),
              Text(controller.counter.toString()),
              IconButton(
                onPressed: (){
                  controller.add();
                },
                icon: const Icon(Icons.add),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
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
                     style:const  TextStyle(color: Colors.black, fontSize: 20),
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
          const SizedBox(
            height: 20,
            width: 20,
          ),
           const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "mango Magnifier indica member of the cashew family ",
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Anacardiaceae and one of the most important and widely",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "cultivated fruits of tropical world.",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 200,
            child: Lottie.asset('assets/lottie/animation_lkayltyx.json'),
          ),
        ],
      );
    }
  );
}

Widget cart(){
  return MaterialButton(
    color: Colors.green,
    minWidth: 500,
    onPressed: () {},
    child: const Text(
      "ADD TO CART",
      style: TextStyle(color: Colors.white),
    ),
  );
}
