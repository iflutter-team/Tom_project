import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tom_project/screen/splash%20screen/Splash_screen.dart';

import 'services/pref_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferenceservices.init();
  runApp(GetMaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home: const Flash(),
    debugShowCheckedModeBanner: false,
  ));
}
