import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../common/scaffold.dart';
import '../../utils/asset_res.dart';
import '../../utils/string_res.dart';
import 'Register_controller.dart';
import 'Register_screen_widget.dart';

class SingupPage extends StatelessWidget {
  SingupPage({Key? key}) : super(key: key);

  final SignupController signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            children: [
              const scaffold(),
              Signup(),
            ],),
        ));
  }
}