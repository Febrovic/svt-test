import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sv_test/login/login_screen.dart';
import 'package:sv_test/onboarding_screens/onBoarding.dart';
import 'package:sv_test/onboarding_screens/onBoarding2.dart';
import 'package:sv_test/reusable_widgets/button_without_image.dart';
import 'package:sv_test/reusable_widgets/textField_custom.dart';

class OnBoarding3Screen extends StatelessWidget {
  const OnBoarding3Screen({super.key});
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
                child: SvgPicture.asset('images/onboarding3.svg'),
              ),
              const SizedBox(
                height: 67,
              ),
              const Text(
                'Create and start',
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
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const OnBoardingScreen()));
                    },
                    child: SvgPicture.asset('images/Ellipse 3.svg'),
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
                          builder: (BuildContext context) => LoginScreen()));
                    },
                    child: SvgPicture.asset('images/Ellipse 1.svg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: ButtonWithoutImage(
                    text: 'Get Started',
                    pressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => LoginScreen()));
                    }),
              ),
              const SizedBox(
                height: 63,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
