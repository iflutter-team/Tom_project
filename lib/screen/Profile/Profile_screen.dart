import 'package:flutter/material.dart';
import 'package:tom_project/utils/color_res.dart';

class Profiles extends StatelessWidget {
  const Profiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "profiles",
              style: TextStyle(fontSize: 50, color: ColorsRes.green1color),
            ),
          ],
        ),
      ),
    );
  }
}
