import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/FAQs/FAQs_screen_widget.dart';
import 'package:tom_project/utils/string_res.dart';

class faqsscreen extends StatelessWidget {
  const faqsscreen({super.key});

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
          StringRes.faqsscreen1,
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
      body: faqqs(),
    );
  }
}
