import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'edit_profile_controller.dart';
import 'edit_profile_widget.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(EditProfileController());
    return SafeArea(
      child: Scaffold(
        appBar: editProfileAppbar(),
        body: Column(
          children: [
            const SizedBox(height: 20,),
            textFieldName(),
            const SizedBox(height: 20,),
            textFieldUserName(),
            const SizedBox(height: 20,),
            textFieldMobileNo(),
            const SizedBox(height: 20,),
            editProfileButton(),
          ],
        ),
      ),
    );
  }
}
