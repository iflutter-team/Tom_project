import 'package:flutter/material.dart';
import 'package:tom_project/utils/color_res.dart';

import '../Delete/Delete_screen.dart';

class ShowProduct extends StatelessWidget {
  const ShowProduct(
      {super.key, this.discount, this.inStock, this.image, this.productname});
  final int? discount;
  final bool? inStock;
  final String? image;
  final String? productname;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 300,
      width: 200,
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
              Text('$discount% discount'),
              Text(inStock! ? 'inStock' : 'out of Stock'),
            ],
          ),
          Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image.asset(image!),
          ),
          Text(productname!),
          const Text('99.1'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const delete(),
                      ));
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  'Delete',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
