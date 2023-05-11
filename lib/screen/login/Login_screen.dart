import 'package:flutter/material.dart';
import 'package:tom_project/screen/login/login_screen_widget.dart';
import 'package:tom_project/utils/string_res.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(image: AssetImage("assets/images/login.png"),),
              SizedBox(height: 30,),
            ],
          ),
        )
    );
  }
}

