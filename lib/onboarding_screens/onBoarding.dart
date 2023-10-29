import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sv_test/login/login_screen.dart';
import 'package:sv_test/onboarding_screens/onBoarding2.dart';
import 'package:sv_test/onboarding_screens/onBoarding3.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/icons8-airplanes-60 1.jpg'),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'sv-Test',
                    style: TextStyle(
                      fontFamily: 'Acme',
                      fontWeight: FontWeight.w400,
                      fontSize: 40.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 84,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: SvgPicture.asset('images/onboarding1.svg'),
              ),
              const SizedBox(
                height: 67,
              ),
              const Text(
                'Welcome to sv-Test',
                style: TextStyle(
                  fontFamily: 'Acme',
                  fontWeight: FontWeight.w400,
                  fontSize: 30.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  'Infrare reavas kroren. Stereofas metrosexualitet amuns. Premuda kontraspektiga. Kuplavönas kaskade. Onde.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Acme',
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,
                    color: Color(0XFFB8C0CB),
                  ),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('images/Ellipse 1.svg'),
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const OnBoarding2Screen()));
                    },
                    child: SvgPicture.asset('images/Ellipse 2.svg'),
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const OnBoarding3Screen()));
                    },
                    child: SvgPicture.asset('images/Ellipse 3.svg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 63,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0, bottom: 160.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => LoginScreen()));
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontFamily: 'Acme',
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
