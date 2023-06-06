import 'package:flutter/material.dart';
import 'package:tom_project/screen/Product/Category/Category_widget.dart';

class Category1 extends StatelessWidget {
  const Category1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                product1(),
                const SizedBox(
                  width: 40,
                ),
                product2(),
              ]),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                product3(),
                const SizedBox(
                  width: 40,
                ),
                product4(),
              ]),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                product5(),
                const SizedBox(
                  width: 40,
                ),
                product6(),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
