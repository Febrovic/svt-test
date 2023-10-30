import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sv_test/login/login_screen.dart';
import 'package:sv_test/reusable_widgets/button_without_image.dart';

class OnBoardingTotal extends StatefulWidget {
  const OnBoardingTotal({super.key});

  @override
  State<OnBoardingTotal> createState() => _OnBoardingTotalState();
}

class _OnBoardingTotalState extends State<OnBoardingTotal> {
  List<String> onBoardingScreens = [
    'images/onboarding1.svg',
    'images/onboarding2.svg',
    'images/onboarding3.svg',
  ];
  List<String> titles = [
    'Welcome to sv-Test',
    'Smart Test',
    'Create and start',
  ];

  int index = 0;

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
                child: SvgPicture.asset(onBoardingScreens[index]),
              ),
              const SizedBox(
                height: 67,
              ),
              Text(
                titles[index],
                style: const TextStyle(
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
                      setState(() {
                        index = 0;
                      });
                    },
                    child: index == 0
                        ? SvgPicture.asset('images/Ellipse 1.svg')
                        : SvgPicture.asset('images/Ellipse 2.svg'),
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: index == 1
                        ? SvgPicture.asset('images/Ellipse 1.svg')
                        : SvgPicture.asset('images/Ellipse 2.svg'),
                  ),
                  const SizedBox(
                    width: 28,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: index == 2
                        ? SvgPicture.asset('images/Ellipse 1.svg')
                        : SvgPicture.asset('images/Ellipse 2.svg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 63,
              ),
              index != 2
                  ? Padding(
                      padding:
                          const EdgeInsets.only(right: 25.0, bottom: 160.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const LoginScreen()));
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
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: ButtonWithoutImage(
                          text: 'Get Started',
                          pressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginScreen()));
                          }),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
