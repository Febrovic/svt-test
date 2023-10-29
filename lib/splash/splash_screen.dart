import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sv_test/onboarding_screens/onBoarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
        ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=>const OnBoardingScreen()))
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/splashScreen 1.gif'),
              const Text(
                's v - T e s t',
                style: TextStyle(
                  fontFamily: 'Acme',
                  fontWeight: FontWeight.w400,
                  fontSize: 40.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
