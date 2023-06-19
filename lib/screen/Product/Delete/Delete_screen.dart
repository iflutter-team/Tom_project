import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Product/Delete/Delete_controller.dart';

import 'Delete_screen_widget.dart';

class delete extends StatelessWidget {
  const delete({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(deleteController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            deleteproduct(),
            const SizedBox(
              height: 10,
            ),
            deletetext(),
            const SizedBox(
              height: 10,
            ),
            deletetext1(),
            const SizedBox(
              height: 10,
            ),
            deletebutton(),
            const SizedBox(
              height: 10,
            ),
            deletetextbutton(),
          ],
        ),
      ),
    );
  }
}
