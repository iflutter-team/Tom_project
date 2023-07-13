import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/viewproduct/view_product_controller.dart';

Widget viewproduct(){
  return  GetBuilder<viewProductcontroller>(
    builder: (controller) =>  Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:  DecorationImage(
                image:
               NetworkImage("https://images.unsplash.com/photo-1528821128474-27f963b062bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
          ),
          const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "cherry",
                style: TextStyle(fontSize: 25, color: Colors.black),
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
                  controller.add();
                },
                icon: const Icon(Icons.add),
              ),
              //Text("$controller.counter"),
              IconButton(
                onPressed: (){
                  controller.hello();
                },
                icon: const Icon(Icons.remove),
              ),
              const SizedBox(
                width: 10,
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
          const SizedBox(
            height: 20,
          ),
       ],
    ),
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