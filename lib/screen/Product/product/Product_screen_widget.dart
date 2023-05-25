import 'package:flutter/material.dart';
import 'package:tom_project/utils/color_res.dart';
import 'package:tom_project/utils/string_res.dart';

Widget productTextfiled() {
  return Padding(
    padding: EdgeInsets.all(15),
    child: Container(
      decoration: BoxDecoration(
        color: ColorsRes.searchcolor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextField(
        cursorColor: ColorsRes.whitecolor,
        autofocus: true,
        style: TextStyle(color: ColorsRes.whitecolor),
        decoration: InputDecoration(
          fillColor: ColorsRes.searchcolor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          focusColor: ColorsRes.searchcolor,
          hintText: StringRes.TextSearch,
          hintStyle: TextStyle(color: ColorsRes.whitecolor),
          suffixIcon: const Icon(
            Icons.search,
            color: ColorsRes.whitecolor,
            size: 35,
          ),
        ),
      ),
    ),
  );
}

Widget productText() {
  return Text(
    StringRes.Textproducts,
    style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: ColorsRes.searchcolor),
  );
}

Widget productText1() {
  return Text(
    StringRes.Textcategory,
    style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: ColorsRes.searchcolor),
  );
}
