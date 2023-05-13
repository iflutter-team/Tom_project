import 'package:flutter/material.dart';
import 'package:tom_project/screen/Registration%20page%202/Registration_controller.dart';
import 'package:tom_project/screen/Registration%20page%202/Registration_screen_widget.dart';
import 'package:get/get.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    Get.put(RegistrationController(),);
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
            const  Positioned(
              bottom: 150,
              right: 350,
              child: CircleAvatar(
                radius: 100,
                backgroundColor: Color(0xFF87b988),
              ),
            ),
            const  Positioned(
              bottom: -130,
              left: 300,
              child: CircleAvatar(
                radius: 150,
                backgroundColor: Color(0xFF87b988),
              ),
            ),
          SafeArea(
            child: Center(
             child: SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Image(image: AssetImage("assets/images/Registration.png"),),
                   RegistrationTextfiled8(),
                   RegistrationTextfiled9(),
                   RegistrationTextfiled10(),
                   RegistrationTextfiled11(),
                   RegistrationTextfiled12(),
                   Row(
                     children: [
                       Registrationcheckbox(),
                       Registrationcheck(),
                     ],
                   ),
                   RegistrationrSign(),
                   Row(
                     children: [
                       const Padding(padding: EdgeInsets.only(left: 100)),
                       Registrationaccount(),
                       RegistrationLogin(),
                     ],
                   ),
                 ],
               ),
             ),
            ),
          ),
    ],
        ),
      ),
    );
  }
}
