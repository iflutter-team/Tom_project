import 'package:flutter/material.dart';
import 'package:tom_project/common/scaffold.dart';
import 'package:tom_project/screen/login/Login_controller.dart';
import 'package:get/get.dart';
import 'Login_screen_widget.dart';

class Login extends StatelessWidget {
  Login({super.key});
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Imagelogin(),
                    const SizedBox(
                      height: 25,
                    ),
                    logintitle(),
                    const SizedBox(
                      height: 20,
                    ),
                    loginTextfiled(),
                    loginTextfiled1(),
                    const SizedBox(
                      width: 100,
                    ),
                    Row(
                      children: [
                        logincheckbox(),
                        logincheck(),
                      ],
                    ),
                    const SizedBox(height: 15),
                    loginButton(),
                    const SizedBox(
                      height: 10,
                    ),
                    loginpass(),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 100)),
                        loginaccount(),
                        loginRegister(),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
