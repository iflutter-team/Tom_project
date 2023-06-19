import 'package:flutter/material.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

Widget condition() {
  return Column(
    children: [
      Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            StringRes.TermsConditions2,
            style: const TextStyle(color: ColorsRes.green1color, fontSize: 15),
            textAlign: TextAlign.justify,
          )),
      Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            StringRes.TermsConditions3,
            style: const TextStyle(color: ColorsRes.green1color, fontSize: 15),
            textAlign: TextAlign.justify,
          )),
      Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            StringRes.TermsConditions4,
            style: const TextStyle(color: ColorsRes.green1color, fontSize: 15),
            textAlign: TextAlign.justify,
          )),
      Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            StringRes.TermsConditions5,
            style: const TextStyle(color: ColorsRes.green1color, fontSize: 15),
            textAlign: TextAlign.justify,
          )),
    ],
  );
}
