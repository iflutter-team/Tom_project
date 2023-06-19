import 'package:flutter/material.dart';
import 'package:tom_project/screen/Orders/CurrentOrders/current_screen_widget.dart';

class currentscreen extends StatelessWidget {
  const currentscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: currentproduct(),
      ),
    );
  }
}
