import 'package:flutter/material.dart';

Widget textFieldCommon(TextEditingController controller, String label,{Widget? prefixIcon}) {
  return TextFormField(
    controller: controller,
    decoration:
    InputDecoration(border: const OutlineInputBorder(), label: Text(label),prefixIcon: prefixIcon),
  );
}
