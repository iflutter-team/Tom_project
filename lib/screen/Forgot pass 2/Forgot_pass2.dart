import 'package:flutter/material.dart';
import 'package:tom_project/screen/Forgot%20pass%202/Forgot_pass2_controller.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Forgot%20pass%202/Forgot_pass2_widget.dart';

class Forgotpass2 extends StatelessWidget {
  const Forgotpass2({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Forgotpass2controller());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageForgetpass2(),
            const SizedBox(
              height: 20,
            ),
            Forgotpass2Texttitle(),
            const SizedBox(
              height: 20,
            ),
            ForgotTextfiled(),
            Forgotpass2button(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Forgot2text(),
                Forgot2Login(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
