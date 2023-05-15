import 'package:flutter/material.dart';
import 'package:tom_project/screen/Register/Register_controller.dart';
import 'package:tom_project/screen/Register/Register_screen_widget.dart';
import 'package:get/get.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
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
              bottom: 320,
              right: 350,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xFF87b988),
              ),
            ),
            const Positioned(
              bottom: 40,
              right: 350,
              child: CircleAvatar(
                radius: 40,
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/images/Register.png"),
                    ),
                    Registertitle(),
                    SizedBox(
                      height: 10,
                    ),
                    RegisterTextfiled2(),
                    RegisterTextfiled3(),
                    RegisterTextfiled4(),
                    RegisterTextfiled5(),
                    RegisterTextfiled6(),
                    RegisterTextfiled7(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Registercheckbox(),
                        Registercheck(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Registernext(),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 100)),
                        Registeraccount(),
                        RegisterLogin(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
