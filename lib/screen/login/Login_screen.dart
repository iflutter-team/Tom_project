import 'package:flutter/material.dart';
import 'package:tom_project/screen/login/login_controller.dart';
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage("assets/images/login.png"),),
              const SizedBox(height: 25,),
              logintitle(),
              const SizedBox(height: 20,),
              loginTextfiled(),
              loginTextfiled1(),
              const SizedBox(width: 100,),
              Row(
                children: [
                  Checkbox(
                      value: hello,
                      onChanged: (value) {
                        setState(() {
                          hello = !hello;
                        });
                      }),
                  logincheckbox(),
                ],
              ),
              const SizedBox(height: 15),
            loginbutton(),
              const SizedBox(height: 20,),
              loginpass(),
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 100)),
                  loginaccount(),
                  loginRegister(),
                ],
              ),
            ]
          ),
        )
    );
  }
}

