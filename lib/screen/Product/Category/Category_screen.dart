import 'package:flutter/material.dart';
import 'package:tom_project/screen/Product/Category/Category_widget.dart';

class Category1 extends StatelessWidget {
  const Category1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(children: [
          product1(),
          product2(),
        ]),
      ),
    );
  }
}
