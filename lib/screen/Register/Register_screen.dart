import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(ImageRes.register),
                  ),
                  Text(
                    StringRes.Registertitle,
                    style: const TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  const SizedBox(height: 20),
                  textFieldName(),
                  const SizedBox(height: 20),
                  textFieldUserName(),
                  const SizedBox(height: 20),
                  textFieldPassword(),
                  const SizedBox(height: 20),
                  textFieldMobileNo(),
                  signUpButton(),
                  const SizedBox(height: 20),
                  login(),
                ],
              ),
            ],),
        ));
  }
}