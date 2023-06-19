import 'package:flutter/material.dart';
import 'package:tom_project/screen/Orders/CancledScreen/cancel_screen_widegt.dart';

class cancelscrren extends StatelessWidget {
  const cancelscrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: cancelproduct(),
      ),
    );
  }
}
