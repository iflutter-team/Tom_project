import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tom_project/screen/login/Login_screen.dart';

class Flash extends StatefulWidget {
  const Flash({Key? key}) : super(key: key);

  @override
  State<Flash> createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3), (){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Login(),),);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/splash screen.png'),
      ),
    );
  }
}