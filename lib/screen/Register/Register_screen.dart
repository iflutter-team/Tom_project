import 'package:flutter/material.dart';
import 'package:tom_project/common/scaffold.dart';
import 'package:tom_project/screen/Register/Register_screen_widget.dart';
import 'package:get/get.dart';

import 'Register_controller.dart';

class Registerscreen extends StatelessWidget {
  Registerscreen({super.key});
  RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Imageregister(),
                    Registertitle(),
                    const SizedBox(
                      height: 10,
                    ),
                    RegisterTextfiled2(),
                    RegisterTextfiled3(),
                    RegisterTextfiled4(),
                    RegisterTextfiled5(),
                    RegisterTextfiled6(),
                    //RegisterTextfiled7(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Registercheckbox(),
                        Registercheck(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Registernext(),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 100)),
                        Registeraccount(),
                        RegisterLogin(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
