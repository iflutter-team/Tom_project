import 'package:flutter/material.dart';

Widget cancelproduct() {
  return ListView.builder(
    itemCount: 2,
    itemBuilder: (context, index) => Container(
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Order #3437998',
                style: TextStyle(color: Colors.green),
              ),
              Text(
                '04:10 PM',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Driver',
                style: TextStyle(color: Colors.green),
              ),
              Text(
                'Ankur Patel,+91 1234567890',
                style: TextStyle(),
              ),
            ],
          ),
          const Text(
            'Cod',
            style: TextStyle(color: Colors.green),
          )
        ],
      ),
    ),
  );
}
