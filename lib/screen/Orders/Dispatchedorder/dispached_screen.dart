import 'package:flutter/material.dart';
import 'package:tom_project/screen/Orders/Dispatchedorder/dispached_screen_widget.dart';

class dispachedscreen extends StatelessWidget {
  const dispachedscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: dispachedproduct(),
      ),
    );
  }
}
