import 'package:flutter/material.dart';
import 'package:tom_project/utils/color_res.dart';

class Orderscreen extends StatelessWidget {
  const Orderscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "orders",
              style: TextStyle(fontSize: 50, color: ColorsRes.green1color),
            ),
          ],
        ),
      ),
    );
  }
}
