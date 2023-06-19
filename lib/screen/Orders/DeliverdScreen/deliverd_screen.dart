import 'package:flutter/material.dart';
import 'package:tom_project/screen/Orders/DeliverdScreen/deliverd_screen_widget.dart';

class deliverdscreen extends StatelessWidget {
  const deliverdscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: deliverdproduct(),
      ),
    );
  }
}
