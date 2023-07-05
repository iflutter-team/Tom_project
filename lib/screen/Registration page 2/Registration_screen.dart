// import 'package:flutter/material.dart';
// import 'package:tom_project/screen/Registration%20page%202/Registration_controller.dart';
// import 'package:tom_project/screen/Registration%20page%202/Registration_screen_widget.dart';
// import 'package:get/get.dart';
// import 'package:tom_project/utils/color_res.dart';
//
// class Registration extends StatelessWidget {
//   const Registration({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(
//       RegistrationController(),
//     );
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: GestureDetector(
//         onTap: () {
//           FocusScope.of(context).unfocus();
//         },
//         child: Stack(
//           children: [
//             Positioned(
//               top: -100,
//               left: -90,
//               child: Container(
//                 height: 240,
//                 width: 240,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: ColorsRes.greenColor,
//                   boxShadow: [BoxShadow(blurRadius: 8)],
//                 ),
//               ),
//             ),
//             Positioned(
//               top: Get.height / 2,
//               left: -130,
//               child: Container(
//                 height: 160,
//                 width: 160,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: ColorsRes.greenColor,
//                   boxShadow: [BoxShadow(blurRadius: 8)],
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: -100,
//               right: -100,
//               child: Container(
//                 height: 200,
//                 width: 200,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: ColorsRes.greenColor,
//                   boxShadow: [BoxShadow(blurRadius: 8)],
//                 ),
//               ),
//             ),
//             Positioned(
//               top: Get.height * 0.25,
//               right: -140,
//               child: Container(
//                 height: 180,
//                 width: 180,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: ColorsRes.greenColor,
//                   boxShadow: [BoxShadow(blurRadius: 8)],
//                 ),
//               ),
//             ),
//             Positioned(
//               top: Get.height * 0.10,
//               left: Get.width * 0.70,
//               child: Container(
//                 height: 60,
//                 width: 60,
//                 decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: ColorsRes.greenColor,
//                   boxShadow: [BoxShadow(blurRadius: 8)],
//                 ),
//               ),
//             ),
//             SafeArea(
//               child: Center(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Imageregisteration(),
//                       Registrationtitle(),
//                       RegistrationTextfiled8(),
//                       RegistrationTextfiled9(),
//                       RegistrationTextfiled10(),
//                       RegistrationTextfiled11(),
//                       RegistrationTextfiled12(),
//                       Row(
//                         children: [
//                           Registrationcheckbox(),
//                           Registrationcheck(),
//                         ],
//                       ),
//                       RegistrationrSign(),
//                       Row(
//                         children: [
//                           const Padding(padding: EdgeInsets.only(left: 100)),
//                           Registrationaccount(),
//                           RegistrationLogin(),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
