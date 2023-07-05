import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/scaffold.dart';
import 'Login_screen_widget.dart';
import 'login_controller.dart';


class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final LoginController loginController = Get.put(LoginController());

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
              loginBody(),
             ],
          ),
        ),
    );
  }
}
