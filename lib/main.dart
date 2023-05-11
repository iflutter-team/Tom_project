import 'package:flutter/material.dart';
import 'package:tom_project/screen/splash%20screen/Splash_screen.dart';
import 'package:get/get.dart';

void main() {
 runApp(
   GetMaterialApp(
     theme: ThemeData(primarySwatch: Colors.green),
     home: const Flash(),
   debugShowCheckedModeBanner: false,
   )
 );
}