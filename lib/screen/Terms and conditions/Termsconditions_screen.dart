import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/Terms%20and%20conditions/Termsconditions_screen_widget.dart';
import 'package:tom_project/utils/string_res.dart';

class termsconditionsScreen extends StatelessWidget {
  const termsconditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.green,
          ),
        ),
        centerTitle: true,
        title: Text(
          StringRes.TermsConditions1,
          style: const TextStyle(fontSize: 20, color: Colors.green),
        ),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 10),
          child: Column(
            children: [
              Divider(
                color: Colors.green,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
      body: condition(),
    );
  }
}
