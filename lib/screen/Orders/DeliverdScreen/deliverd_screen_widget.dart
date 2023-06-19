import 'package:flutter/material.dart';

Widget deliverdproduct() {
  return ListView.builder(
    itemCount: 2,
    itemBuilder: (context, index) => Container(
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.grey.shade200,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Row(
            children: [
              const Text(
                'Cod',
                style: TextStyle(color: Colors.green),
              ),
              const SizedBox(width: 100),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.green)),
                child: const Text(
                  'Feedback',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.green,
                child: const Text(
                  'View Order',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
