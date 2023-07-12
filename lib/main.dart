import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/splash%20screen/Splash_screen.dart';
import 'package:tom_project/services/pref_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   await PrefService.init();
  runApp(GetMaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home:  SplashPage(),
    debugShowCheckedModeBanner: false,
  ));
}
