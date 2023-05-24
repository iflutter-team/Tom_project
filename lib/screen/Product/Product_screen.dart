import 'package:flutter/material.dart';
import 'package:tom_project/utils/color_res.dart';

class productscreen extends StatelessWidget {
  const productscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "product",
              style: TextStyle(fontSize: 50, color: ColorsRes.green1color),
            ),
          ],
        ),
      ),
    );
  }
}
