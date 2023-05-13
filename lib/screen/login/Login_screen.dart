import 'package:flutter/material.dart';
import 'package:tom_project/screen/login/Login_controller.dart';
import 'package:get/get.dart';

import 'Login_screen_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hello = false;

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            const Positioned(
              bottom: 650,
              right: 200,
              child: CircleAvatar(
                radius: 300,
                backgroundColor: Color(0xFF87b988),
              ),
            ),
            const Positioned(
              bottom: 680,
              left: 300,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFF87b988),
              ),
            ),
            const Positioned(
              bottom: 400,
              left: 330,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color(0xFF87b988),
              ),
            ),
            const Positioned(
              bottom: 150,
              right: 350,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color(0xFF87b988),
              ),
            ),
            const Positioned(
              bottom: -130,
              left: 300,
              child: CircleAvatar(
                radius: 150,
                backgroundColor: Color(0xFF87b988),
              ),
            ),
            Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage("assets/images/login.png"),
                    ),
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
                    loginbutton(),
                    const SizedBox(
                      height: 20,
                    ),
                    loginpass(),
                    const SizedBox(
                      height: 20,
                    ),
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
